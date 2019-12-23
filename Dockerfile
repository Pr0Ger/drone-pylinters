FROM python:3.8.1-alpine3.10

COPY requirements.txt /

RUN \
    apk add --no-cache --update bash build-base ca-certificates && \
    pip install --no-cache-dir --upgrade pip -rrequirements.txt && \
    apk del build-base

COPY script.sh /

ENTRYPOINT ["/script.sh"]
