FROM python:3.12.4-bookworm

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY app /app/

EXPOSE 8000
CMD ["uvicorn", "weather_api:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
