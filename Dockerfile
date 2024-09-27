FROM python:3.12.6-alpine3.20

WORKDIR /dbt_app

COPY . .
COPY profiles /dbt_app/profiles

RUN pip install --upgrade  pip
RUN pip install dbt-core

RUN dbt deps