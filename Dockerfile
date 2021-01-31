FROM python:3-stretch

ENV DIRPATH /usr/src/tests

COPY . $DIRPATH
WORKDIR $DIRPATH

RUN pip install pipenv && pipenv install --deploy --system
