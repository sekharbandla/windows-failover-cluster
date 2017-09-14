#
# Cookbook Name:: windows-failover-cluster-creation
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

################ Windows Failover Cluster Configuration ####################
=begin
powershell_script 'WSFC-config2' do
  code <<-EOH
  Test-Cluster
  New-Cluster -Name '#{node['windows-failover-cluster-creation']['NewClusterName']}' -Node  $env:computername -StaticAddress '#{node['windows-failover-cluster-creation']['secondaryIP']}'
  EOH
  domain node['windows-failover-cluster-creation']['DomainName']
  user node['windows-failover-cluster-creation']['DomainUserName']
  password node['windows-failover-cluster-creation']['DomainUserPassword']
end
=end

powershell_script 'cluster-creation' do
  code <<-EOH
  New-Cluster -Name '#{node['windows-failover-cluster-creation']['NewClusterName']}' -Node  $env:computername -StaticAddress '#{node['windows-failover-cluster-creation']['secondaryIP']}'
  EOH
  domain node['windows-failover-cluster-creation']['DomainName']
  user node['windows-failover-cluster-creation']['DomainUserName']
  password node['windows-failover-cluster-creation']['DomainUserPassword']
end
