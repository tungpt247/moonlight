#
# Cookbook Name:: e_app
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# add user to system
add_sys_user

# add authentication for known uses
# add_authorized_keys_for node['user'] do
#   authorized_keys node['authorized_keys']
# end

# create dir tree for user app
cap_dir_tree_for

# create secret keys
secrets_yml_for

# create postges database
create_db_for

# make app live on nginx
nginx_site_for

# unicorn
unicorn_for
