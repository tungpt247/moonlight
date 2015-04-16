#
# Cookbook Name:: e_rvm
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


# To fix:
# Error executing action `run` on resource 'execute[Adding gpg key]'
# add 'namespace 8.8.8.8' to /etc/resolv.conf on vagrant server
resolv_file = '/etc/resolv.conf'
ruby_block 'insert_line' do
  block do
    file = Chef::Util::FileEdit.new(resolv_file)
    file.insert_line_if_no_match('/nameserver 8.8.8.8/', 'nameserver 8.8.8.8')
    file.write_file
  end
end
