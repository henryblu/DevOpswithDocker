FROM node:16.14.0

WORKDIR /usr/src/app
COPY . .

RUN npm install
RUN npm install -g serve
RUN npm run build

CMD [ "serve", "-s", "-l", "5000", "build" ]