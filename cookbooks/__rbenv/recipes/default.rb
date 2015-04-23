#
# Cookbook Name:: __rbenv
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "rbenv::default"
# include_recipe "rbenv::ruby_build"

rbenv_ruby "2.2.0"

rbenv_gem "bundle" do
  ruby_version "2.2.0"
end
