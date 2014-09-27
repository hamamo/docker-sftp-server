FROM debian:latest
MAINTAINER Hans-Martin Mosner <hmm@heeg.de>

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install openssh-server
ADD start-sftp-server.sh /root/start-sftp-server.sh

CMD [ "/root/start-sftp-server.sh" ]
