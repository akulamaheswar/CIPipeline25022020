#First Dockerfile implementation

FROM ubuntu:16.04

LABEL MAINTAINER ma@gmail.com

RUN mkdir /code

COPY sample.sh /code/sample.sh

RUN chmod +X /code/sample.sh

#CMD sh /code/sample.sh /etc/resolv.conf

ENTRYPOINT ["sh","/code/sample.sh"]

CMD ["/etc/resolv.conf"]
