FROM golang:1.16-alpine AS builder
RUN apk update && apk add --no-cache make git
WORKDIR /build
COPY . ./
RUN go build main.go

FROM alpine:latest
WORKDIR /bdjuno
COPY --from=builder /build/main /usr/bin/main
CMD [ "main" ]