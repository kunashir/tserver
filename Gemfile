source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'geokit'
gem 'timezone'
gem 'google_timezone'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'rack-mini-profiler'

group :development do
  gem 'foreman'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano3-unicorn'
  gem "bullet"
  #gem 'capistrano-sidekiq'
  gem "capistrano-scm-gitcopy"
end

group :production, :staging do
  gem 'dotenv'
  gem 'dotenv-deployment', require: 'dotenv/deployment'
end

group :development, :test do
  gem "dotenv-rails"
  gem "capybara-webkit", ">= 1.2.0"
  gem 'selenium-webdriver'
  gem "rspec-rails", "~> 3.1"
  gem "factory_girl_rails"#, require: false
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  # gem "webmock"
  gem 'pry-rails'
  gem 'spork'
  gem 'guard-rspec', require: false
  gem 'airbrake'
  gem 'cucumber-rails', require: false
  gem 'simplecov', require: false
  gem 'byebug'
end

