ENV["RAILS_ENV"] ||= "culerity_development"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'

Cucumber::Rails::World.use_transactional_fixtures = false
ActionController::Base.allow_rescue = false

require 'cucumber/formatter/unicode'
require 'cucumber/rails/rspec'
require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation

require 'cucumber/rails/world'
require 'cucumber/rails/active_record'
require 'cucumber/web/tableish'

require 'fileutils'
FileUtils.touch "#{RAILS_ROOT}/tmp/restart.txt"

@@cucumber_cli_test_number = 1
Before do
  puts "--- TEST ##{@@cucumber_cli_test_number} ---"
  @@cucumber_cli_test_number += 1
end

require 'factory_girl'
require "#{RAILS_ROOT}/test/factories.rb"
require "#{RAILS_ROOT}/db/bootstrap.rb"

Before do
  Bootstrapper.run :test
end

def print_page_on_error(*args, &block)
  begin
    yield
  rescue
    open_current_html_in_browser_
    raise
  end
end
