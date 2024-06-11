FROM node:18-alpine AS build

WORKDIR /usr/src/app

COPY package*.json backend/package*.json frontend/package*.json ./

RUN npm install 

COPY . .

RUN npm run build:ui

FROM node:18-alpine

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/backend /usr/src/app/backend

WORKDIR /usr/src/app/backend

RUN npm install dotenv && \
    npm install -g cross-env && \
    adduser -D appuser && \
    chown appuser .

USER appuser

EXPOSE 3003

CMD ["npm", "start"]
