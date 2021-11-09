FROM node:16

WORKDIR /app
COPY *.json ./
COPY yarn.lock ./yarn.lock

RUN yarn install
COPY . .
EXPOSE 9091

CMD [ "yarn", "start" ]
