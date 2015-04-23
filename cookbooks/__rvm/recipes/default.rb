#
# Cookbook Name:: __rvm
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# execute "Adding gpg key" do
  # command "gpg --recv-keys D39DC0E3 && \curl -sSL https://get.rvm.io | bash -s stable"
  # command "sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"

  # command "gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"
  # only_if 'which gpg'
  #
  # command "sudo iptables -I OUTPUT -p tcp --dport 11371"
  # command "sudo gpg --keyserver hkp://keys.gnupg.net:80 --recv-keys D39DC0E3"
  # command "sudo curl -sSL https://rvm.io/mpapis.asc | sudo gpg --import -"
# end

# bash "import RVM's gpg signature" do
#   code "gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"
# end

resolv_file = '/etc/resolv.conf'
ruby_block 'insert_line' do
  block do
    file = Chef::Util::FileEdit.new(resolv_file)
    file.insert_line_if_no_match('/nameserver 8.8.8.8/', 'nameserver 8.8.8.8')
    file.write_file
  end
end
