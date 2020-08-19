FROM alpine:latest
FROM node:12.18-alpine

COPY . /srv/app
WORKDIR /srv/app

RUN npm install

EXPOSE 2368

CMD [ "npm", "start"]