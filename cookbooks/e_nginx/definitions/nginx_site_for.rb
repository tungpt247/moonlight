define :nginx_site_for do
  user = node['user']
  app_name = node['app_name']

  conf_path = "/home/#{user}/#{app_name}/shared/config/nginx.production.conf"

  template conf_path do
    source "nginx.conf.erb"
    action :create
    mode 0775
    owner user
    group user
    variables ({app_name: app_name, user: user})
    cookbook "e_nginx"
  end

  link "#{node['nginx']['dir']}/sites-enabled/#{app_name}" do
    to conf_path
    only_if { File.exists?(to) }
  end
end
