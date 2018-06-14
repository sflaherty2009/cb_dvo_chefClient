#
# Cookbook Name:: cb_dvo_chefClient
# Recipe:: logrotatewin
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

conf_plain_file "#{node['chef_client']['windows']['conf_dir']}\\client.rb" do
  pattern %r{azure}
  action :remove
  guard_interpreter :powershell_script
  not_if "!(Select-String -Path '#{node['chef_client']['windows']['conf_dir']}\\client.rb' -Pattern \'azure\')"
end

conf_plain_file "#{node['chef_client']['windows']['conf_dir']}\\client.rb" do
  pattern %r{Azure}
  action :remove
  guard_interpreter :powershell_script
  not_if "!(Select-String -Path '#{node['chef_client']['windows']['conf_dir']}\\client.rb' -Pattern \'Azure\')"
end

conf_plain_file "#{node['chef_client']['windows']['conf_dir']}\\client.rb" do
  pattern %r{#}
  action :remove
  guard_interpreter :powershell_script
  not_if "!(Select-String -Path '#{node['chef_client']['windows']['conf_dir']}\\client.rb' -Pattern \'#\')"
end

conf_plain_file "#{node['chef_client']['windows']['conf_dir']}\\client.rb" do
  pattern %r{log_location}
  new_line "log_location       '#{node['chef_client']['windows']['log_dir']}\\#{node['chef_client']['windows']['log_file']}'"
  action :insert_if_no_match
  guard_interpreter :powershell_script
  only_if "!(Select-String -Path '#{node['chef_client']['windows']['conf_dir']}\\client.rb' -Pattern '#{node['chef_client']['windows']['log_file']}')"
end

directory node['chef_client']['windows']['log_dir']

file "#{node['chef_client']['windows']['log_dir']}\\#{node['chef_client']['windows']['log_file']}" do
  :create_if_missing
end

windows_logrotate 'chef' do
  username task_user
  password task_password
  run_immediately true
  confidential false
  conf <<-EOF
#{node['chef_client']['windows']['log_dir']}\\#{node['chef_client']['windows']['log_file']} {
    #{node['chef_client']['windows']['frequency']}
    rotate #{node['chef_client']['windows']['rotate']}
    compress
    endscript
}
  EOF
end
