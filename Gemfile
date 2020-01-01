source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem "loofah", ">= 2.3.1"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  # Remote multi-server automation tool
  # https://github.com/capistrano/capistrano
  gem "capistrano", "~> 3.11.1", require: false

  # RVM support for Capistrano v3
  # https://github.com/capistrano/rvm
  gem "capistrano-rvm", "~> 0.1.2", require: false

  # Rails specific Capistrano tasks
  # https://github.com/capistrano/rails
  gem "capistrano-rails", "~> 1.4.0", require: false

  # Bundler support for Capistrano 3.x
  # https://github.com/capistrano/bundler
  gem "capistrano-bundler", "~> 1.6.0", require: false

  # Puma integration for Capistrano 3
  # https://github.com/seuros/capistrano-puma
  gem "capistrano3-puma", "~> 4.0.0", require: false

  # Remote rails console for capistrano
  # https://github.com/ydkn/capistrano-rails-console
  gem "capistrano-rails-console", "~> 2.3.0", require: false

  # A collection of capistrano tasks for syncing assets and databases
  # https://github.com/sgruhier/capistrano-db-tasks
  gem "capistrano-db-tasks", "~> 0.6", require: false

  # Run any rake task on a remote server using Capistrano
  # https://github.com/sheharyarn/capistrano-rake
  gem "capistrano-rake", "~> 0.2.0", require: false
end
