define :unicorn_for do
  config_path = "/home/#{node['user']}/#{node['app_name']}/shared/config"

  template "#{config_path}/unicorn.rb" do
    source 'unicorn.rb.erb'
    action :create_if_missing
    mode 0775
    owner node['user']
    group node['user']
    variables({app_name: node['app_name'], user: node['user']})
    cookbook '__unicorn'
  end

  template "#{config_path}/unicorn_init.sh" do
    source 'unicorn_init.sh.erb'
    mode 0775
    owner node['user']
    group node['user']
    action :create
    variables({app_name: node['app_name'], user: node['user']})
    cookbook '__unicorn'
  end

  link "/etc/init.d/unicorn-#{node['app_name']}" do
    to "#{config_path}/unicorn_init.sh"
    only_if { File.exists?(to) }
  end
end
