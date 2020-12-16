FROM node:12-alpine as build

RUN mkdir -p /app

WORKDIR  /app

COPY ./Package*.json .

RUN npm install

RUN npm run build 
