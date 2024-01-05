FROM node:20-slim

ENV PATH="$PATH:node_modules/.bin"
ENV VERSION 1
ENV FASTIFY_ADDRESS 0.0.0.0
ENV SERVER_MESSAGE testing
RUN apt-get update && apt-get install -y make

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

CMD ["bin/start.sh"]
