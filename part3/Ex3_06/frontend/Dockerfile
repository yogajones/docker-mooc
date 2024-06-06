FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install -g serve && \
    npm install && \
    npm run build && \
    rm -rf ./node_modules /root/.npm

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
