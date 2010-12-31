ENV['RACK_ENV'] = 'test'

period = File.dirname(__FILE__)
require File.expand_path(File.join(period, '..', '..', 'boot'))
Bundler.require(:test)

require 'capybara/cucumber'

Capybara.app = Sinatra::Application

class SuccesSoftWorld
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SuccesSoftWorld.new
end
