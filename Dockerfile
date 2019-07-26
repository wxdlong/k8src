from golang as builder
WORKDIR /go/src
RUN echo "hello" > hello.docker

FROM alpine:latest  
WORKDIR /root/
COPY --from=builder /go/src/hello.docker .
CMD ["cat","hello.docker"]  
