FROM python:3.10-alpine

LABEL maintainer="brokenpip3 <brokenpip3@gmail.com>"
LABEL org.opencontainers.image.authors="brokenpip3 <brokenpip3@gmail.com>"
LABEL org.opencontainers.image.title="fakesmtp"
LABEL org.opencontainers.image.description=" A fake smtp server for kubernetes "
LABEL org.opencontainers.image.url="https://quay.io/brokenpip3/fake-smtp"
LABEL org.opencontainers.image.source="https://github.com/brokenpip3/k8s-fake-smtp"
LABEL org.opencontainers.image.base.name="docker.io/python:3.10-alpine"

COPY --chown=nobody:nobody entrypoint.sh /
USER nobody
WORKDIR /tmp

ENTRYPOINT ["/entrypoint.sh"]
CMD python -m smtpd -c DebuggingServer -n 0.0.0.0:10025
