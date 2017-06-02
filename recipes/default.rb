#
# Cookbook Name:: cb_dvo_chefClient
# Recipe:: default
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

include_recipe 'chef-client::default'
include_recipe 'chef-client::delete_validation'
