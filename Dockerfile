from golang:alpine as builder
RUN apk add --no-cache git 
RUN go get -d k8s.io/kubernetes || echo download

FROM scratch
WORKDIR /root/
COPY --from=builder /go/src/ .
