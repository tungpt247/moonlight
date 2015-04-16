define :add_sys_user do
  user = node['user']

  user user do
    supports manage_home: true
    home "/home/#{user}"
    shell '/bin/bash'
    system true
    action :create
  end
end
