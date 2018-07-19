# Change to match your CPU core count
workers Integer(ENV['WEB_CONCURRENCY'] || 2)

# Min and Max threads per worker
threads_count = Integer(ENV['MAX_THREADS'] || 6)
threads threads_count, threads_count

app_dir = File.expand_path('../..', __FILE__)

# Default to production
rails_env = ENV['RAILS_ENV'] || 'production'
environment rails_env

socket_location     = "unix://#{app_dir}/tmp/sockets/puma.sock"
pidfile_location    = "#{app_dir}/tmp/pids/puma.pid"
state_path_location = "#{app_dir}/tmp/pids/puma.state"

bind       socket_location
pidfile    pidfile_location
state_path state_path_location

# Logging
if %w[staging production].include?(rails_env)
  stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true
end

on_worker_boot do
  require 'active_record'
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end

preload_app!

tag "medialibrary-#{rails_env}"
