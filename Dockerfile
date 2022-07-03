FROM python:3.8-slim
ARG port

USER root
COPY . /test
WORKDIR /test

ENV PORT=$port

RUN apt-get install nodejs

EXPOSE $PORT
