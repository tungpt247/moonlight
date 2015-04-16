source 'https://supermarket.chef.io'

metadata
cookbook 'apt'
cookbook 'build-essential', '~> 2.2.2'
cookbook 'sudo', '~> 2.7.1'
cookbook 'nodejs', '~> 2.2.0'
cookbook 'locale', '~> 1.0.2'
cookbook 'rvm', '0.10.1' ,github: 'martinisoft/chef-rvm' # fix undefined method `rvm_environment'
cookbook 'nginx', '~> 2.7.6'
cookbook 'postgresql', '~> 3.4.18'

# customs cooks
cookbook 'e_sys_users', path: 'cookbooks/e_sys_users'
cookbook 'e_rvm', path: 'cookbooks/e_rvm'
cookbook 'e_nginx', path: 'cookbooks/e_nginx'
cookbook 'e_postgresql', path: 'cookbooks/e_postgresql'
cookbook 'e_unicorn', path: 'cookbooks/e_unicorn'
cookbook 'e_puma', path: 'cookbooks/e_puma'
cookbook 'e_app', path: 'cookbooks/e_app'
cookbook 'e_apt', path: 'cookbooks/e_apt'
