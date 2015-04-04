#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

if node[:platform_family] == 'rhel'

  include_recipe "yum"
  include_recipe "yum-epel"
  include_recipe "auto-update"

  node.default['yum']['epel']['enabled'] = true
  node.default['yum']['epel']['mirrorlist'] = nil
  node.default['yum']['epel']['baseurl'] = "baseurl=http://10.197.10.244/cobbler/repo_mirror/EPEL6-x86"
  node.default['yum']['epel']['sslverify'] = false

  execute "update-grub-conf-1" do
    command "sed --in-place 's|rhgb quiet||g' /boot/grub/grub.conf"
  end

  cookbook_file "/etc/aliases" do
    source "aliases"
    mode "0644"
    owner "root"
    group "root"
  end

  template "/etc/motd" do
    source "motd"
    mode "0644"
    owner "root"
    group "root"
  end
end
