FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install -g serve

RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost/api/

RUN npm run build

EXPOSE 5000

RUN useradd -m frontend-user

RUN chown frontend-user .

USER frontend-user

CMD ["serve", "-s", "-l", "5000", "build"]
