#!/bin/bash
exec sudo /etc/init.d/zimbra status  > /tmp/tmpservices.out &
chown snmp:snmp /tmp/tmpservices.out
