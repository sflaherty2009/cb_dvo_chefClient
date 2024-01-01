#
# Cookbook Name:: cb_dvo_chefclient
# Recipe:: disable
#
# Copyright (c) 2017 example s, All Rights Reserved.

service 'chef-client' do
  action [:stop, :disable]
end
