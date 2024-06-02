FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

ENV PORT=8080 REQUEST_ORIGIN=http://localhost/

RUN go build

RUN chmod +x ./server

EXPOSE 8080

RUN adduser backend-user

RUN chown backend-user .

USER backend-user

CMD ./server
