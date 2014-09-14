#
# Cookbook Name:: mynginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nginx"
#include_recipe "php-fpm"

# enable sites
nginx_site 'default' do
  enable true
end

directory node['nginx']['default_root'] do
  owner     node['nginx']['user']
  mode "0755"
  action :create
  recursive true
end
cookbook_file "#{node['nginx']['default_root']}/index.php" do
  source "index.php"
  mode "0644"
end

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'default-site.erb'
  owner  'root'
  group  node['root_group']
  mode   '0644'
  notifies :reload, 'service[nginx]'
end
