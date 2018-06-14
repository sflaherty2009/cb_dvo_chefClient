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

conf_plain_file 'C:\\chef\\client.rb' do
  pattern %r{azure}
  action :remove
  guard_interpreter :powershell_script
  not_if '!(Select-String -Path \'C:\\chef\\client.rb\' -Pattern \'azure\')'
end

conf_plain_file 'C:\\chef\\client.rb' do
  pattern %r{Azure}
  action :remove
  guard_interpreter :powershell_script
  not_if '!(Select-String -Path \'C:\\chef\\client.rb\' -Pattern \'Azure\')'
end

conf_plain_file 'C:\\chef\\client.rb' do
  pattern %r{#}
  action :remove
  guard_interpreter :powershell_script
  not_if '!(Select-String -Path \'C:\\chef\\client.rb\' -Pattern \'#\')'
end

conf_plain_file 'C:\\chef\\client.rb' do
  pattern %r{log_location}
  new_line 'log_location       \'S:\\Log\\chef.log\''
  action :insert_if_no_match
  guard_interpreter :powershell_script
  only_if '!(Select-String -Path \'C:\\chef\\client.rb\' -Pattern \'chef.log\')'
end

windows_logrotate 'chef' do
  username task_user
  password task_password
  run_immediately true
  confidential false
  conf <<-EOF
S:\\Logs\\chef.log {
    weekly
    rotate 12
    compress
    endscript
}
  EOF
end
