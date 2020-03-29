FROM alpine:3.11.3 AS download

RUN apk add curl

WORKDIR /tmp

RUN curl -sSL -O https://github.com/drone/drone-cli/releases/download/v1.2.1/drone_linux_amd64.tar.gz \
  && tar xvfz drone_linux_amd64.tar.gz \
  && rm -f drone_linux_amd64.tar.gz \
  && chmod 755 drone \
  && mv drone /usr/local/bin/

FROM alpine:3.11.3

WORKDIR /app/src

USER root
RUN addgroup -g 1000 app
RUN adduser -u 1000 -G app -h /app/src -s /bin/bash -H -D app
RUN mkdir -p /app/src && chown -R app:app /app

RUN apk add curl make rsync git tini bash
RUN apk update

RUN ln -nfs /bin/bash /bin/sh
RUN ln -nfs /sbin/tini /tini

COPY --from=download /usr/local/bin/drone /usr/local/bin/drone

COPY plugin /plugin

USER app
ENV HOME=/app/src

ENTRYPOINT [ "/tini", "--", "/plugin" ]
