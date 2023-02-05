FROM alpine

RUN apk add --no-cache curl bind-tools busybox-extras bash git openssh rsync

RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && 

WORKDIR /app

COPY entrypoint.sh entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]