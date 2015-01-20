# Generated by cucumber-sinatra. (2015-01-20 09:59:21 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = LookUp

class LookUpWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  LookUpWorld.new
end
