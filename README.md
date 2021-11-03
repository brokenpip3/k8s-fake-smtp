# Simple k8s fake smtp server

Do you have an application which needs a smtp server but you don't really care about
sending email through it?
Are you developing a new application in kubernetes and do you need a smtp
microservice to debug sending mails?

This is a simple python DebuggingServer from smtplib that allows you to provide
a smtp server which always accepts mails and print them to stdout or not (see Privacy)

## Install

You can find an example [here](fake-stmp.yaml)

## Privacy

By default this container logs all the incoming emails in stdout for debugging
purpose, if you prefer to avoid this behavior just set the env var `NOLOG` to value `1`.
