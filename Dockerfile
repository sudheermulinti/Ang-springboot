FROM node:12-alpine as build

RUN mkdir -p /app

WORKDIR  /app

COPY ./package*.json .

RUN npm install

RUN npm run build 
