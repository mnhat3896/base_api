FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY ./app /app

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN adduser -D user
USER user