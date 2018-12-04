#
# Cookbook Name:: cb_dvo_chefclient
# Recipe:: windows
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

local_admin = data_bag_item('hybDatabase', 'local_admin')
if node['hostname'].include?('kit')
  task_user = 'azure'
  task_password = 'P2ssw0rd'
else
  task_user = 'local_admin'
  task_password = local_admin['password']
end

chef_client_scheduled_task 'chef-client' do
  user task_user
  password task_password
  log_directory 'S:\\Logs'
  action :add
end
