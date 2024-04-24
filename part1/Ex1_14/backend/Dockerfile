FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

ENV PORT=8080 REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN chmod +x ./server

EXPOSE 8080

CMD ./server
