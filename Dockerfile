FROM node:8.5-alpine

RUN chown -R node:node /usr/local/lib/node_modules \
  && chown -R node:node /usr/local/bin

USER node
RUN npm install -g @angular/cli@1.4.2

USER root
RUN ng set --global packageManager=npm
