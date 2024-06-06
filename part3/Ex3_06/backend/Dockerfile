FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build && \
    chmod +x ./server && \
    go clean -modcache && \
    rm -rf /root/.cache

ENV PORT=8080

EXPOSE 8080

CMD ./server
