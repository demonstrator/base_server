#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

if node[:platform_family] == 'rhel'

  include_recipe "yum-epel"
  include_recipe "yum"

  execute "update-grub-conf-1" do
    command "sed --in-place 's|rhgb quiet||g' /boot/grub/grub.conf"
  end

  package 'iptables-ipv6' do
  action :remove
  end

  package 'NetworkManager' do
  action :remove
  end

  package 'NetworkManager-glib' do
  action :remove
  end

  package 'b43-openfwwf' do
  action :remove
  end

  package 'bacula-client' do
  action :install
  end

  package 'bind-libs' do
  action :install
  end

  package 'bind-utils' do
  action :install
  end

  package 'ftp' do
  action :install
  end

  package 'logwatch' do
  action :install
  end

  package 'telnet' do
  action :install
  end

  package 'traceroute' do
  action :install
  end

  package 'tcpdump' do
  action :install
  end

  package 'man' do
  action :install
  end

  package 'man-pages' do
  action :install
  end

  package 'openssh-clients' do
  action :install
  end

  package 'mlocate' do
  action :install
  end

  package 'yum-plugin-priorities' do
  action :install
  end

  node.default['yum']['epel']['enabled'] = true
  node.default['yum']['epel']['mirrorlist'] = nil
  node.default['yum']['epel']['baseurl'] = "baseurl=http://10.197.10.244/cobbler/repo_mirror/EPEL6-x86"
  node.default['yum']['epel']['sslverify'] = false

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
