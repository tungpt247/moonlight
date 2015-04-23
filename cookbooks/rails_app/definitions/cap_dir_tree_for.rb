define :cap_dir_tree_for do

  app_name = node["app_name"]
  user = node["user"]

  %W(
    /home/#{user}/#{app_name}
    /home/#{user}/#{app_name}/shared
    /home/#{user}/#{app_name}/shared/config
    /home/#{user}/#{app_name}/shared/log
    /home/#{user}/#{app_name}/shared/tmp
    /home/#{user}/#{app_name}/shared/tmp/pids
    /home/#{user}/#{app_name}/shared/pids
    /home/#{user}/#{app_name}/shared/sockets
  ).each do |path|
    directory path do
      owner user
      group user
      mode 0755
      recursive true
      action :create
    end
  end
end
