define :unicorn_for do
  app_name = node['app_name']
  user = node['user']
  config_path = "/home/#{user}/#{app_name}/shared/config"

  template "#{config_path}/unicorn.rb" do
    source 'unicorn.rb.erb'
    mode 0775
    owner user
    group user
    action :create
    variables({app_name: app_name, user: user})
    cookbook 'e_unicorn'
  end

  template "#{config_path}/unicorn_init.sh" do
    source 'unicorn_init.sh.erb'
    mode 0775
    owner user
    group user
    action :create
    variables({app_name: app_name, user: user})
    cookbook 'e_unicorn'
  end

  link "/etc/init.d/unicorn-#{app_name}" do
    to "#{config_path}/unicorn_init.sh"
    only_if { File.exists?(to) }
  end
end
