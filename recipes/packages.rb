#
# Cookbook Name:: base-server
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

if node[:platform_family] == 'rhel'

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
end
