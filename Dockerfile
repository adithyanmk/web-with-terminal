FROM python:3.8-slim
ARG port

USER root
COPY . /test
WORKDIR /test

ENV PORT=$port

RUN npm -v

EXPOSE $PORT
