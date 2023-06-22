FROM hashicorp/packer:1.8
ENV ANSIBLE_VERSION=2.13.3.0
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.16/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.16/community" >> /etc/apk/repositories \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --update && apk add curl py3-pip
RUN pip install ansible>=${ANSIBLE_VERSION}
ENTRYPOINT ["/bin/sh","-c"]
