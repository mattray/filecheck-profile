#
# Cookbook:: fc_cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

node.override['audit']['attributes']['file'] = "/tmp/#{node.name}"
