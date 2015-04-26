require 'rubygems'
require 'spork'
# require 'zip'
# This code runs once when you run your test suite
Spork.prefork do

  # This file is copied to spec/ when you run 'rails generate rspec:install'
  ENV["RAILS_ENV"] ||= 'test'
  require 'spec_helper'
  require File.expand_path("../../config/environment", __FILE__)
  require File.expand_path("../../app/models/tzone", __FILE__)
  require 'rspec/rails'

  # require 'capybara/rails'
  # require 'database_cleaner'
  # require 'devise'


   # Routes and app/ classes reload
  require 'rails/application'
  Spork.trap_method(Rails::Application::RoutesReloader, :reload!)
  Spork.trap_method(Rails::Application, :eager_load!) 

  Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

  # Checks for pending migrations before tests are run.
  # If you are not using ActiveRecord, you can remove this line.
  # ActiveRecord::Migration.maintain_test_schema!

  RSpec.configure do |config|
    # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
    # config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, remove the following line or assign false
    # instead of true.
    # config.use_transactional_fixtures = false

    config.include Rails.application.routes.url_helpers
    # config.include Features, type: :feature
    config.infer_spec_type_from_file_location!
    # config.include Capybara::DSL
    # config.include(UserHelper)
    # config.include Devise::TestHelpers, :type => :controller
    # Capybara.javascript_driver = :webkit
    # include Warden::Test::Helpers
    # Warden.test_mode!

    # config.before(:suite) do
    #   # DatabaseCleaner.strategy = :transaction
    #   if Capybara.current_driver == :rack_test
    #     DatabaseCleaner.strategy = :transaction
    #   else
    #     DatabaseCleaner.strategy = :truncation
    #   end
    #   DatabaseCleaner.clean_with(:truncation)
    # end

    # Capybara.register_driver :selenium do |app|
    #   Capybara::Selenium::Driver.new(app, :browser => :firefox)
    # end
    # config.after do
    #   DatabaseCleaner.clean
    # end
  end
end
# This code will be run each time you run your specs.
Spork.each_run do
  require 'factory_girl_rails'
  FactoryGirl.reload
  I18n.backend.reload!
  Dir[Rails.root.join('spec/support/**/*.rb')].each {|f| require f}
  # Dir[Rails.root.join('spec/views/**/*.rb')].each {|f| require f}
end 