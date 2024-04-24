FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN chmod +x ./server

ENV PORT=8080

EXPOSE 8080

CMD ./server
