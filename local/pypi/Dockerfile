FROM pypiserver/pypiserver:latest

RUN apk update && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*

CMD ["run", "--port", "8888", "--health-endpoint", "/health", "/data/packages"]
