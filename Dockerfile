FROM golang:alpine3.17 as builder
WORKDIR /app
COPY ./app .
RUN go mod init fullcycle/hello 
RUN go build

FROM scratch
COPY --from=builder /app/hello /
ENTRYPOINT ["/hello"]
