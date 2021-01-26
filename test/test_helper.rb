ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require 'minitest/mock'
require "rails/test_help"

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end
