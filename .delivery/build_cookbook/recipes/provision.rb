#
# Cookbook Name:: build_cookbook
# Recipe:: provision
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::provision'
include_recipe 'cb_infra_acceptance' if workflow_stage?('acceptance')
