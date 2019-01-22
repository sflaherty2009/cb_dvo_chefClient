#
# Cookbook Name:: cb_dvo_chefclient
# Recipe:: default
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'chef-client::cron' if %w(development testing staging production).include?(node.chef_environment)
  include_recipe 'chef-client::config'
  include_recipe 'chef-client::delete_validation'
  include_recipe 'chef_client_updater::default'
when 'windows'
  include_recipe 'cb_dvo_chefclient::windows'
  include_recipe 'windows_logrotate::default'
  include_recipe 'chef-client::delete_validation'
  include_recipe 'cb_dvo_chefclient::logrotatewin'
  include_recipe 'chef_client_updater::default'
else
  raise "no #{node['os']} support"
end
