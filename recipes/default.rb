#
# Cookbook Name:: cb_dvo_chefClient
# Recipe:: default
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'chef-client::default'
  include_recipe 'chef-client::delete_validation'
when 'windows'
  raise 'no Windows support'
else
  raise "no #{node['os']} support"
end
