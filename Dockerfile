FROM alpine

RUN apk add --no-cache curl bind-tools busybox-extras bash git openssh rsync

WORKDIR /app