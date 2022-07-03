FROM python:3.8-slim
ARG port

USER root
COPY . /test
WORKDIR /test

ENV PORT=$port

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    && apt-get -y install curl \
    && apt-get install libgomp1

EXPOSE $PORT
