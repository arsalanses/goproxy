FROM golang:1.21.0-bookworm as build

WORKDIR /go/src/app

COPY . .

ENV GOPROXY=https://goproxy.arsalanse.ir
ENV GO111MODULE=on

RUN go mod download

RUN CGO_ENABLED=0 go build -o /go/bin/app

# FROM gcr.io/distroless/static-debian11
FROM debian:12-slim

COPY --from=build /go/bin/app /

CMD ["/app"]
