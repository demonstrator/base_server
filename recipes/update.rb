# Cookbook Name:: base-server
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


# Update yum
if node[:platform_family] == 'rhel'
   execute "yum-update" do
   user    'root'
   command 'yum -y update'
   action  :run
   end
end
