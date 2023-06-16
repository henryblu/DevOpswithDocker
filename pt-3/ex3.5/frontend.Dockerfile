FROM node:16.14.0-alpine3.14

WORKDIR /usr/src/app
COPY . .

RUN npm install
RUN npm install -g serve
RUN npm run build
RUN adduser -D person
USER person


CMD [ "serve", "-s", "-l", "5000", "build" ]