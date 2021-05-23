#!/bin/sh

mv vsftpd.conf /etc/vsftpd/vsftpd.conf
echo "ftps is starting..."
adduser -D user
echo "user:user" | chpasswd
mkdir /home/user/ftp
chown nobody:nogroup /home/user/ftp
chmod a-w /home/user/ftp
mkdir /home/user/ftp/files
chown user:user /home/user/ftp/files
echo "vsftpd sample file" > /home/user/ftp/files/sample.txt

echo "running ftp server..."
vsftpd etc/vsftpd/vsftpd.conf
#vsftpd