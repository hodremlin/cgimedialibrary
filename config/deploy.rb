# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :user,        'medialibrary'
set :application, 'medialibrary'
set :repo_url,    'git@github.com:hodremlin/cgimedialibrary.git'
set :domain,      '172.99.68.97'

append :linked_dirs, 'log', 'tmp'
append :linked_files, '.env', 'config/application.yml', 'config/database.yml', 'config/fog.yml'

## rbenv config
set :rbenv_type,   :user
set :rbenv_ruby,   '2.4.4'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} "\
                   "#{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w[rake gem bundle ruby rails puma pumactl]
set :rbenv_roles, :all # default value

namespace :deploy do
  task :restart_app do
    on roles :app do
      execute :sudo, 'restart-app', '-e', fetch(:stage), fetch(:application)
    end
  end
end

after 'deploy:published', 'deploy:restart_app'
after 'deploy:reverted',  'deploy:restart_app'
