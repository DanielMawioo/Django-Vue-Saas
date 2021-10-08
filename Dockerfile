# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /Dev
COPY requirements.txt /Dev/
RUN pip install -r requirements.txt
COPY . /Dev/

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]