FROM golang:1.22

WORKDIR /usr/src/store-users-api

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY src/go.mod src/go.sum ./
RUN go mod download && go mod verify

COPY src ./
RUN go build -v -o store-users-api .

EXPOSE 8080

CMD ["./store-users-api"]