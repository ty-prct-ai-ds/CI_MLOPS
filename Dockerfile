FROM python:3.9-slim

WORKDIR /app

COPY req_for_docker/requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

COPY main.py /app/main.py

EXPOSE 8000

CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]

