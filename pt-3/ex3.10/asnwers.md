for this exercise i reduced the size of the express-app made in exercise 3.1

## Original sizes: 
### 913MB

## Original Dockerfile:

    FROM node:16

    COPY . .

    RUN npm install

## Optimised sizes: 
### 122MB

## Optimised Dockerfile: 

    FROM node:16-alpine AS builder

    WORKDIR /app

    COPY . .

    RUN apk add --no-cache nodejs npm \
        && npm ci --only=production 

    FROM node:16-alpine

    WORKDIR /app

    COPY --from=builder /app .

    RUN adduser -D appuser \
        && chown -R appuser /app \
        && chmod -R 755 /app

    USER appuser

    CMD ["node", "index.js"]
