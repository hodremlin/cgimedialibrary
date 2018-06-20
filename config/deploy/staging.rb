set :rails_env, 'staging'
set :deploy_to, '/var/www/medialibrary/staging'
set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

server fetch(:domain), user: fetch(:user), roles: %w[app db web]

set :ssh_options, forward_agent: true, compression: false, keepalive: true