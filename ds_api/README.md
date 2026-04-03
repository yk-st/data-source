# API
Fast API & uvicorn

# 接続情報

## ホストからのアクセス

| 項目               | アクセス                                                                | ユーザー | パスワード |
|--------------------|-----------------------------------------------------------------------|----------|------------|
| Open API doc| http://localhost:8000/docs    | -       | -          |

自己証明書のためブラウザで警告が出ますが無視で問題ありません。

## ワーキングコンテナからのアクセス

プログラム的に利用するエンドポイント
| 項目               | アクセス                                                                | ユーザー(ClientID) | パスワード |
|--------------------|-----------------------------------------------------------------------|----------|------------|
| Weather API       |  http://docker.host.internal:8000/weather  | pyspark@local.data.platform(api_token)       | OLklloONpt0lKiIDG6mJBR8FIdpqpyhX          |
| Weather Cursor API |  http://docker.host.internal:8000/weather_cursor | pyspark@local.data.platform(api_token)     | OLklloONpt0lKiIDG6mJBR8FIdpqpyhX          |

※ユーザは今回ldapのデータを利用しています(ildffファイル参照)。

## SSL
なし

# 初期設定
なし

# APIの使い方等のコマンドスニペット

## アクセストークンの取得

```
KC_BASE="http://keycloak.local.data.platform:8080"
REALM="openldap"
CLIENT_ID="api_token"
CLIENT_SECRET="OLklloONpt0lKiIDG6mJBR8FIdpqpyhX"

TOKEN=$(curl -s -X POST "$KC_BASE/realms/$REALM/protocol/openid-connect/token" \
  -d "grant_type=password" \
  -d "client_id=$CLIENT_ID" \
  -d "client_secret=$CLIENT_SECRET" \
  -d "username=pyspark@local.data.platform" \
  -d "password=pyspark"  | jq -r '.access_token')

```

## 天気データを取得するためのBODYの作成と呼び出し

```
read -r -d '' BODY <<'JSON'
[
  {"lat": 35.46, "lon": 139.62, "dt": "2025-05-05T09:00:00Z"},
  {"lat": 43.06, "lon": 141.34, "dt": "2025-05-05T09:00:00Z"}
]
JSON

echo $BODY

curl -s -X POST "http://api.local.datasource:8000/weather" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$BODY" | jq

```

レスポンス例

```
[
  {
    "lat": 35.46,
    "lon": 139.62,
    "dt": "2025-05-05T09:00:00Z",
    "temperature_c": 23,
    "condition": "SUNNY",
    "generated_at": "2025-07-22T13:22:01Z"
  },
  {
    "lat": 43.06,
    "lon": 141.34,
    "dt": "2025-05-05T09:00:00Z",
    "temperature_c": 5,
    "condition": "WINDY",
    "generated_at": "2025-07-22T13:22:01Z"
  }
]

```

cursor式の場合の呼び出し例

```

# 1ページ目
curl -H "Authorization: Bearer $TOKEN" \
  "http://api.local.datasource:8000/weather_cursor?lat=35.46&lon=139.62&start=2025-05-05T00:00:00Z&limit=3"

# 返り値の next_cursor を変数に入れて…
NEXT="MjAyNS0wNS0wNVQwMzowMDowMFo="

# 2ページ目
curl -H "Authorization: Bearer $TOKEN" \
  "http://api.local.datasource:8000/weather_cursor?lat=35.46&lon=139.62&start=2025-05-05T00:00:00Z&limit=3&cursor=$NEXT"
