FROM ubuntu:14.04

MAINTAINER Wei-Chih Ting “shooding@gmail.com”

RUN apt-get update

RUN apt-get -y install openssh-server

RUN mkdir /var/run/sshd

RUN mkdir /root/.ssh/

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
