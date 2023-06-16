FROM golang:1.16-alpine3.14

WORKDIR /usr/src/app
COPY . .

RUN go build
RUN adduser -D person
USER person

CMD ["./server"]
