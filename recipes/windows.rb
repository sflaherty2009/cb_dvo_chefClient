#
# Cookbook Name:: cb_dvo_chefclient
# Recipe:: windows
#
# Copyright (c) 2017 example s, All Rights Reserved.

include_recipe 'chef-vault'

creds = chef_vault_item('infrastructure-vaults', 'credentials')

if node.chef_environment == 'test-kitchen'
  task_user = 'azure'
  task_password = creds['azure_kitchen']['windows_password']
elsif node.chef_environment == 'local-kitchen'
  task_user = 'Administrator'
  task_password = creds['local_kitchen']['windows_password']
else
  task_user = 'local_admin'
  task_password = creds['local_admin']['password']
end

directory 'S:/Logs' do
  rights :full_control, 'Administrators', applies_to_children: true
end

chef_client_scheduled_task 'chef-client' do
  user task_user
  password task_password
  log_directory 'S:/Logs'
  action :add
end
