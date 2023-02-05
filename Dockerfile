FROM alpine

ARG SSH_KEY

RUN apk add --no-cache curl bind-tools busybox-extras bash git openssh rsync

RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    echo "${SSH_KEY}" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa

WORKDIR /app