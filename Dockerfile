FROM golang:1.12
COPY . /src/
WORKDIR /src
RUN go mod download
RUN go build -a -o hellow-world ./cmd/hello-world
RUN chmod +x hellow-world
ENTRYPOINT ["./src/hellow-world"]