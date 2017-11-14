#!/bin/bash
case $1 in
     ZimbraStatusAmavis)
          more /tmp/tmpservices.out | grep amavis | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusAntispam)
          more /tmp/tmpservices.out | grep antispam | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusAntivirus)
          more /tmp/tmpservices.out | grep antivirus | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusConvertd)
          more /tmp/tmpservices.out | grep convertd | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusLDAP)
          more /tmp/tmpservices.out | grep ldap | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusLogger)
          more /tmp/tmpservices.out | grep logger | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusMailboxd)
          more /tmp/tmpservices.out | grep mailbox | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusMemcache)
          more /tmp/tmpservices.out | grep memcached | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusMTA)
           more /tmp/tmpservices.out | grep mta | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusOpendkim)
          more /tmp/tmpservices.out | grep opendkim | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusProxy)
          more /tmp/tmpservices.out | grep proxy | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusServicewebapp)
          more /tmp/tmpservices.out | grep 'service webapp' | awk '{print $3}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;; 
     ZimbraStatusSNMP)
          more /tmp/tmpservices.out | grep snmp | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusSpell)
          more /tmp/tmpservices.out | grep spell | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusStats)
          more /tmp/tmpservices.out | grep stats | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
    ZimbraStatusZimbrawebapp)
          more /tmp/tmpservices.out | grep 'zimbra webapp' | awk '{print $3}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;; 
    ZimbraStatusZimbraadminwebapp)
          more /tmp/tmpservices.out | grep 'zimbraAdmin webapp' | awk '{print $3}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;; 
     ZimbraStatusConfigd)
          more /tmp/tmpservices.out | grep zmconfigd | awk '{print $2}' | sed -e 's/Running/1/g' | sed -e 's/Stopped/0/g' | sed -e 's/Failed/2/g'
          ;;
     ZimbraStatusLicense)
          sudo -u zimbra -H sh -c "/opt/zimbra/bin/zmlicense -check"
          ;;
     ZimbraStatusLicensevalid)
          sudo -u zimbra -H sh -c "/opt/zimbra/bin/zmlicense -print" | grep ValidUntil |  awk -F'=' '{print $2}'
          ;;
esac
