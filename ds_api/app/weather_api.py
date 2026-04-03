# mock_weather_api.py
"""
Mock Weather API (v3.0 ‑ JWT / Keycloak validation)
===================================================
Returns deterministic pseudo‑weather data for one or more latitude/longitude/time tuples.

### 変更点 (v3.0)
* **JWT 必須**: `Authorization: Bearer <token>` で Keycloak が発行したアクセストークンを検証。
* **JWKS 取得**: 起動時に `KEYCLOAK_JWKS_URL` から公開鍵セット (JWKS) をダウンロードし、`kid` で署名検証。
* **依存追加**: `python-jose[cryptography]`, `python-multipart`（FastAPI が自動で要求）。

```bash
pip install "fastapi>=0.110" "uvicorn[standard]" "pydantic>=2" \
            "python-jose[cryptography]" requests
export KEYCLOAK_JWKS_URL="https://keycloak.example.com/realms/myrealm/protocol/openid-connect/certs"
uvicorn mock_weather_api:app --reload --port 8080
```

---
Example request
```http
POST /weather HTTP/1.1
Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IjEifQ....
Content-Type: application/json

[
  {"lat": 35.46, "lon": 139.62, "dt": "2025-05-05T09:00:00Z"}
]
```

冪等性: `(lat, lon, hour)` が同じなら常に同じ結果が返ります。
"""
from __future__ import annotations

import base64
import datetime as _dt
import hashlib
import os
import random
from typing import Dict, List, Optional

import requests
from fastapi import Depends, FastAPI, HTTPException, Query, Security, status
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from jose import jwk, jwt
from pydantic import BaseModel, Field, field_validator

app = FastAPI(title="Mock Weather API", version="3.2")

# Keycloak の設定
KEYCLOAK_SERVER_URL = "http://host.docker.internal:28080"
REALM = "openldap"
CLIENT_ID = "api_token"
AUDIENCE = CLIENT_ID  # デコード時に使用する Audience
JWKS_URL = f"{KEYCLOAK_SERVER_URL}/realms/{REALM}/protocol/openid-connect/certs"

# ---------------------------------------------------------------------------
# JWT / Keycloak helpers
# ---------------------------------------------------------------------------
#JWKS_URL = os.getenv("KEYCLOAK_JWKS_URL")
if not JWKS_URL:
    raise RuntimeError("KEYCLOAK_JWKS_URL env var must be set")

try:
    JWKS = {k["kid"]: k for k in requests.get(JWKS_URL, timeout=5).json()["keys"]}
except Exception as exc:  # pragma: no cover
    raise RuntimeError(f"Unable to fetch JWKS: {exc}") from exc

security = HTTPBearer()


def _verify_jwt(creds: HTTPAuthorizationCredentials = Security(security)) -> dict:
    token = creds.credentials
    try:
        hdr = jwt.get_unverified_header(token)
        key_dict = JWKS[hdr["kid"]]
        public_key = jwk.construct(key_dict)
        return jwt.decode(token, public_key, algorithms=[hdr["alg"]], options={"verify_aud": False})
    except Exception as exc:  # noqa: BLE001
        raise HTTPException(status_code=401, detail=str(exc))


# ---------------------------------------------------------------------------
# Data models
# ---------------------------------------------------------------------------
class CoordinateDT(BaseModel):
    lat: float = Field(..., ge=-90, le=90)
    lon: float = Field(..., ge=-180, le=180)
    dt: _dt.datetime = Field(..., description="ISO8601 datetime, UTC or with offset")
    unique_id: str = Field(..., description="Unique identifier for the request")

    @field_validator("dt", mode="before")
    def _v_dt(cls, v):  # noqa: N805
        if isinstance(v, str):
            v = _dt.datetime.fromisoformat(v.replace("Z", "+00:00"))
        if v.tzinfo is None:
            v = v.replace(tzinfo=_dt.timezone.utc)
        return v


class WeatherResponse(BaseModel):
    lat: float
    lon: float
    dt: _dt.datetime
    unique_id: str
    temperature_c: int
    condition: str
    generated_at: _dt.datetime


class CursorPage(BaseModel):
    items: List[WeatherResponse]
    next_cursor: Optional[str] = None


_CONDITIONS = ["SUNNY", "RAINY", "CLOUDY", "SNOW", "WINDY"]


def _deterministic_weather(lat: float, lon: float, hour_dt: _dt.datetime):
    # まずシードを作成
    key = f"{round(lat,3)}_{round(lon,3)}_{hour_dt:%Y-%m-%dT%H}"
    seed = int(hashlib.sha256(key.encode()).hexdigest()[:16], 16)
    rng = random.Random(seed)

    # 天気条件を先に決定
    cond = rng.choice(_CONDITIONS)

    # 条件ごとの温度レンジを定義
    temp_ranges = {
        "SUNNY":  (15, 35),
        "CLOUDY": (5,  25),
        "RAINY":  (0,  20),
        "WINDY":  (0,  15),
        "SNOW":   (-10, 0),
    }
    t_min, t_max = temp_ranges.get(cond, (-10, 35))
    print("cond->:", cond, t_min, t_max)

    # 条件に応じたレンジから温度を生成
    t = rng.randint(t_min, t_max)

    return t, cond


# ---------------------------------------------------------------------------
# /weather (batch)
# ---------------------------------------------------------------------------
@app.post("/weather", response_model=List[WeatherResponse])
def get_weather(coords: List[CoordinateDT], _claims: dict = Depends(_verify_jwt)):  # noqa: B008
    now = _dt.datetime.now(tz=_dt.timezone.utc).replace(microsecond=0)
    resp: List[WeatherResponse] = []
    for c in coords:
        hour_dt = c.dt.astimezone(_dt.timezone.utc).replace(minute=0, second=0, microsecond=0)
        t, cond = _deterministic_weather(c.lat, c.lon, hour_dt)
        resp.append(WeatherResponse(unique_id=c.unique_id, lat=c.lat, lon=c.lon, dt=hour_dt, temperature_c=t, condition=cond, generated_at=now))
        print("response->:", cond, t)
    return resp


# ---------------------------------------------------------------------------
# /weather_cursor  – cursor‑based pagination demo
# ---------------------------------------------------------------------------
@app.get("/weather_cursor", response_model=CursorPage)
def get_weather_cursor(
    lat: float = Query(..., ge=-90, le=90),
    lon: float = Query(..., ge=-180, le=180),
    start: str = Query(..., description="ISO8601 UTC start datetime"),
    limit: int = Query(3, ge=1, le=24),
    cursor: Optional[str] = None,
    _claims: dict = Depends(_verify_jwt),  # noqa: B008
):
    """Cursor‑based hourly weather. Cursor is base64(ISO8601‑datetime)."""

    try:
        start_dt = _dt.datetime.fromisoformat(start.replace("Z", "+00:00")).astimezone(_dt.timezone.utc)
    except ValueError:
        raise HTTPException(status_code=400, detail="Invalid 'start' datetime")

    if cursor:
        try:
            cursor_dt = _dt.datetime.fromisoformat(base64.urlsafe_b64decode(cursor).decode())
            current_dt = cursor_dt
        except Exception:
            raise HTTPException(status_code=400, detail="Invalid cursor")
    else:
        current_dt = start_dt

    items: List[WeatherResponse] = []
    now = _dt.datetime.now(tz=_dt.timezone.utc).replace(microsecond=0)

    for _ in range(limit):
        t, cond = _deterministic_weather(lat, lon, current_dt)
        items.append(WeatherResponse(lat=lat, lon=lon, dt=current_dt, temperature_c=t, condition=cond, generated_at=now))
        current_dt += _dt.timedelta(hours=1)

    # next_cursor if we haven't reached 24 hours window (arbitrary demo cap)
    horizon = start_dt + _dt.timedelta(hours=24)
    next_cursor = None
    if current_dt < horizon:
        next_cursor = base64.urlsafe_b64encode(current_dt.isoformat().encode()).decode()

    return CursorPage(items=items, next_cursor=next_cursor)
