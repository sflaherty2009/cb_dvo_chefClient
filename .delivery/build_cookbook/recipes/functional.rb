#
# Cookbook Name:: build_cookbook
# Recipe:: functional
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::functional'
include_recipe 'cb_dvo_terraform::acceptance' if workflow_stage?('acceptance')
