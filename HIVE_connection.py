import pyhs2 as hive
connection = hive.connect(host='knox.hadoop.company.com', port= xxxx, authMechanism='LDAP', user=u'userid@hadoop.company.com', password='XXXXXX')
