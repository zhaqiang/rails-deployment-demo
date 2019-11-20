# frozen_string_literal: true

set :branch, "master"
set :rails_env, "production"
set :app_url, "https://deploy-demo.zq-dev.com"
set :rvm_ruby_version, "2.6.5"
set :rvm_custom_path, "/usr/share/rvm"

set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{shared_path}/log/puma.error.log"
set :puma_error_log, "#{shared_path}/log/puma.access.log"

server "149.28.21.157", user: "deploy", roles: %w[app db web]
