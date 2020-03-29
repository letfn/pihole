FROM letfn/container

COPY plugin /plugin

ENTRYPOINT [ "/tini", "--", "/plugin" ]
