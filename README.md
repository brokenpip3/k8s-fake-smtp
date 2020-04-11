# Simple k8s fake smtp server

You have an application which needs a smtp server but yuo don't really care about
sending email through it?
Or are you developing a new application on kubernetes and you need a smtp
microservice to debug sending mails?

This is a simple python DebuggingServer from smtplib that allows you to provide
a smtp server which always accepts mails and print them to stdout or not (see Privacy)

## Install

`kubectl apply -f fake-smtp.yaml`

## Privacy

If, for any reason (privacy, sensible information etc), you don't want to
have the mail in pod logs (stdout), just set the env "NOLOG" to value "1" (there
is arleady an example on yaml file, just comment out in case you need)