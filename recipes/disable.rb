#
# Cookbook Name:: cb_dvo_chefClient
# Recipe:: disable
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

service 'chef-client' do
  action [:stop, :disable]
end
