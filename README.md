docker-sftp-server
==================

Runs sftp-server within a docker container so sftp-only users get quarantined somewhat.

To install:
* build a docker container:
	$ docker build -t sftp-server .
* copy the two auxiliary shell scripts to <tt>/usr/local/bin</tt>:
	$ cp sftp-wrapper sftp-wrapper-2 /usr/local/bin
* add sftp-wrapper-2 do the sudoers file (it's probably better to use visudo to edit the file):
	$ echo "ALL ALL=(root) NOPASSWD: /usr/local/bin/sftp-wrapper-2" >> /etc/sudoers
* change the login shell of sftp-only users to "/usr/local/bin/sftp-wrapper"


