source 'https://supermarket.chef.io'
metadata

cookbook 'apt'
cookbook 'build-essential', '~> 2.2.2'
cookbook "sudo", "~> 2.7.1"
cookbook "git", "~> 4.1.0"
cookbook "nodejs", "~> 2.2.0"
cookbook "locale", "~> 1.0.2"
cookbook 'rvm', '0.10.1' ,github: 'martinisoft/chef-rvm' # fix undefined method `rvm_environment'
cookbook "nginx", "~> 2.7.6"
cookbook "postgresql", "~> 3.4.18"
cookbook 'imagemagick', '~> 0.2.3'

cookbook '__apt', path: 'cookbooks/__apt'
cookbook '__rvm', path: 'cookbooks/__rvm'
cookbook '__nginx', path: 'cookbooks/__nginx'
cookbook '__postgresql', path: 'cookbooks/__postgresql'
cookbook '__unicorn', path: 'cookbooks/__unicorn'
cookbook '__imagemagic', path: 'cookbooks/__imagemagic'
cookbook "sys_users", path: "cookbooks/sys_users"
cookbook 'rails_app', path: 'cookbooks/rails_app'
