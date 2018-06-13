#
# Cookbook Name:: cb_dvo_chefClient
# Recipe:: default
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'chef-client::config'
  include_recipe 'chef-client::delete_validation'
when 'windows'
  include_recipe 'chef-client::delete_validation'
else
  raise "no #{node['os']} support"
end
