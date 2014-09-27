#!/bin/sh
USER=${USER:=nobody}
UID=${UID:=999}
GID=${GID:=999}
groupadd -g $GID $USER
useradd -d /home/$USER -u $UID -g $GID -s /bin/false $USER
cd /home/$USER
exec su $USER -s /usr/lib/openssh/sftp-server
