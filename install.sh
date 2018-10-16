#! /bin/bash
# @edt ASIX M06 2018-2019
# instal·lacio slapd edt.org
# -------------------------------------------
rm -rf /etc/openldap/slapd.d/*
rm -rf /var/lib/ldap
cp /opt/docker/DB_CONFIG /var/lib/ldap-m06
cp /opt/docker/DB_CONFIG /var/lib/ldap-edt
cp /opt/docker/DB_CONFIG /var/lib/ldap-nom
slaptest -F /etc/openldap/slapd.d/ -f /opt/docker/slapd.conf
slapadd	-F /etc/openldap/slapd.d/ -l /opt/docker/m06.ldif
slapadd	-n2 -F /etc/openldap/slapd.d/ -l /opt/docker/edt.ldif
slapadd	-n3 -F /etc/openldap/slapd.d/ -l /opt/docker/nom.ldif
chown -R ldap.ldap /var/lib/ldap-m06
chown -R ldap.ldap /var/lib/ldap-edt
chown -R ldap.ldap /var/lib/ldap-nom
chown -R ldap.ldap /etc/openldap/slapd.d

