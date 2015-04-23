#
# Cookbook Name:: data_bags
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

secret_key = Chef::Config[:encrypted_data_bag_secret]
google = data_bag_item("accounts", "google", secret_key)
pp google['password']
