#
# Cookbook Name:: build_cookbook
# Recipe:: functional
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::functional'
include_recipe 'cb_infra_acceptance' if workflow_stage?('acceptance')
