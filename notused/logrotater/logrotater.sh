#!/bin/bash

#cp /var/log/syslog/syslog.log /var/log/syslog/syslog.old
#touch /var/log/syslog/syslog.log
#chown abc:users /var/log/syslog/syslog.log
#touch /root/test.txt

#/bin/date >> /root/test.txt

chown root:root /etc/logrotate.d/syslog-ng
logrotate -f /etc/logrotate.d/syslog-ng

#logrotate -vs state-file /etc/logrotate.d/syslog/syslogrotater.log
