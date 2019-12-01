# config valid for current version and patch releases of Capistrano
lock "~> 3.11.2"

set :application, "rails-deployment-demo"
set :repo_url, "git@github.com:zhaqiang/rails-deployment-demo.git"
set :deploy_to, "/var/www/rails-deployment-demo"
set :init_system, :systemd
set :stage, :production

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

namespace :puma do
  desc "Create Directories for Puma Pids and Socket"
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :start, :make_dirs
end

namespace :deploy do
  desc "Initialize configuration using example files provided in the distribution"
  task :upload_config do
    on release_roles :all do |host|
      Dir["config/master.key", "config/*.yml.example"].each do |file|
        save_to = "#{shared_path}/config/#{File.basename(file, '.example')}"
        unless test "[ -f #{save_to} ]"
          upload!(File.expand_path(file), save_to)
        end
      end
    end
  end
  before "deploy:check:linked_files", "deploy:upload_config"

  desc "Initial Deploy"
  task :initial do
    on roles(:app) do
      before "deploy:restart", "puma:start"
      invoke "deploy"
    end
  end

  desc "Restart application"
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke "puma:restart"
    end
  end

  after :finishing, :cleanup
  after :finishing, :restart
end
