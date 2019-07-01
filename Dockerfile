FROM python:alpine

COPY requirements.txt /

RUN \
    apk add --no-cache --update build-base ca-certificates && \
    pip install --no-cache-dir --upgrade pip -rrequirements.txt && \
    apk del build-base

COPY script.sh find_packages.py /

ENTRYPOINT ["/script.sh"]
