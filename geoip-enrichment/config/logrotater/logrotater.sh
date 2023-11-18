#!/bin/bash

mv /var/log/syslog/syslog.log /var/log/syslog/syslog.log.1
touch /var/log/syslog/syslog.log && chown abc:users /var/log/syslog/syslog.log

