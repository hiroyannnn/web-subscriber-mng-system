#!/bin/bash

send=/home/vagrant/web-subscriber-mng-system/httpd/conf/httpd.conf
dest=/etc/httpd/conf/httpd.conf
date=$(date +%Y%m%d%H%M%S)
s_hash=$(md5sum $send)
d_hash=$(md5sum $dest)

if [ $s_hash != $d_hash ]
then
  mv $dest $dest_$date
  mv $send $dest
fi
exit 0
