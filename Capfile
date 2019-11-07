# frozen_string_literal: true
# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load the SCM plugin appropriate to your project:
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# Include tasks from other gems included in your Gemfile
require "capistrano/rvm"
require "capistrano/bundler"
require "capistrano/rails"
require "capistrano/rails/console"
require "capistrano/rake"

require "capistrano/puma"
install_plugin Capistrano::Puma, load_hooks: false  # Default puma tasks
install_plugin Capistrano::Puma::Workers, load_hooks: false
set :puma_init_active_record, true

# Add database AND assets tasks to capistrano to a Rails project
# Read more: https://github.com/sgruhier/capistrano-db-tasks#capistranodbtasks
require "capistrano-db-tasks"
# if you want to remove the local dump file after loading
set :db_local_clean, true
# if you want to remove the dump file from the server after downloading
set :db_remote_clean, true

# if you are highly paranoid and want to prevent any push operation to the server
set :disallow_pushing, true

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
