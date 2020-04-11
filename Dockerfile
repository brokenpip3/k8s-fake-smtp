FROM python:3.8-slim
WORKDIR /tmp
USER nobody
COPY run.sh .
ENTRYPOINT ["./run.sh"]
CMD python -m smtpd -c DebuggingServer -n 0.0.0.0:10025
