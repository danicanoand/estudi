# Version: 0.0.1
# edt M06 2018-2019
# ldapserver base edt.org
#-------------------------------------------------
FROM fedora:27
RUN dnf -y install procps openldap-clients openldap-servers
RUN mkdir /opt/docker
RUN mkdir /var/lib/ldap-m06
RUN mkdir /var/lib/ldap-edt
RUN mkdir /var/lib/ldap-nom
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
