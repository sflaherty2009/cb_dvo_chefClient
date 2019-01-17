#
# Cookbook Name:: build_cookbook
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::default'
include_recipe 'cb_infra_acceptance::install'
