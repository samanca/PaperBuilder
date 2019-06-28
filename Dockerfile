FROM ubuntu:18.04
WORKDIR /paper
COPY . /paper
RUN ./init.sh
CMD ["/bin/sh", "./build.sh"]
