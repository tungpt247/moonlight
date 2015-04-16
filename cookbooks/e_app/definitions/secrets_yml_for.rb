require 'securerandom'

define :secrets_yml_for do
  user = node['user']
  app_name = node['app_name']

  path = "home/#{user}/#{app_name}/shared/config/secrets.yml"

  template path do
    source 'secrets.yml.erb'
    mode 0755
    owner user
    group user
    variables secret_key_base: SecureRandom.hex(64)
    action :create_if_missing
  end
end
