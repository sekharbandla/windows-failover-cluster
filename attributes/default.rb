#
# Cookbook Name:: WCFC
# Author:: pavankumar.amballa@reancloud.com

# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Package uri for dnow

#Change the default admin email
default["windows-failover-cluster-creation"]["secondaryIP"]  = '10.0.25.24'
default["windows-failover-cluster-creation"]["NewClusterName"]  = 'cluster10'
default["windows-failover-cluster-creation"]["DomainUserName"]  = 'administrator'
default["windows-failover-cluster-creation"]["DomainUserPassword"]  = 'reanadmin@123'
default["windows-failover-cluster-creation"]["DomainName"]  = 'opis.internal'
#default["windows-failover-cluster-creation"]["DomainServerIP"]  = '10.0.25.152'


