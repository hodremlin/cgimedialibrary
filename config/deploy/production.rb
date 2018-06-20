set :rails_env, 'production'
set :deploy_to, '/var/www/medialibrary/production'
set :branch, 'master'

server fetch(:domain), user: fetch(:user), roles: %w[app db web]

set :ssh_options, forward_agent: true, compression: false, keepalive: true