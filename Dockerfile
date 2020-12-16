FROM node:12-alpine as build

RUN mkdir -p /app

WORKDIR  /app

COPY ./package*.json ./

RUN npm install
COPY . /app/
RUN npm run build 

FROM nginx:1.17.1-alpine

COPY --from=build /app/dist /usr/share/nginx/html
