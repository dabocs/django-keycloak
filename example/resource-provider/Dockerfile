FROM python:3.11.4-alpine

RUN apk update \
   && apk add git openssl-dev libffi-dev build-base \
   && pip install poethepoet poetry

COPY ./poetry.lock ./pyproject.toml /usr/src/app/

WORKDIR /usr/src/app

RUN poetry install

COPY . /usr/src/app

EXPOSE 8001

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8001" ]
