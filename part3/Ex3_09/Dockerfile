FROM golang:1.16-alpine3.13 AS build

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build && \
    chmod +x ./server && \
    go clean -modcache && \
    rm -rf /root/.cache

ENV PORT=8080

FROM scratch

EXPOSE 8080

COPY --from=build /usr/src/app/server /server

CMD ["/server"]