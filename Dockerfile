FROM python:3.7.4-alpine3.10

COPY requirements.txt /

RUN \
    apk add --no-cache --update build-base ca-certificates && \
    pip install --no-cache-dir --upgrade pip -rrequirements.txt && \
    apk del build-base

COPY script.sh /

ENTRYPOINT ["/script.sh"]
