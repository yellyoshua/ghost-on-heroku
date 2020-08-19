FROM node:12.18-alpine

ENV GHOST_INSTALL=/srv/ghost-on-heroku
ENV GHOST_CONTENT=/srv/ghost-on-heroku/content
ENV NODE_ENV=production

COPY . /srv/ghost-on-heroku
WORKDIR $GHOST_INSTALL

RUN npm install --save
VOLUME $GHOST_CONTENT

EXPOSE 2368
CMD [ "npm", "start"]