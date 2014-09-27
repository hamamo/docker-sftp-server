#!/bin/sh
if [ ! -n "$USER" -a -n "$UID" -a -n "$GID" ]
then
  echo environment variables USER, UID and GID must be set
  exit 1
fi
groupadd -g $GID $USER
useradd -d /home/$USER -u $UID -g $GID -s /bin/false $USER
cd /home/$USER
exec su $USER -s /usr/lib/openssh/sftp-server
