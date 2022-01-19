FROM golang:1.7.3 as build
WORKDIR /app
COPY main.go .
RUN CGO_ENABLE=0 GOOS=linux go build -a -installsuffix cgo -o main


FROM alpine:3.14 as final
WORKDIR /app
COPY --from=build /app/main .
CMD ["./main"]

