#
# Cookbook Name:: e_apt
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

execute "apt-get update" do
  command "apt-get update"
end
