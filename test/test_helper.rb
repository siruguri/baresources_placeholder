ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting

  include FactoryGirl::Syntax::Methods
  # Add more helper methods to be used by all tests here...
end

module FactoryHelpers
  def random_string(count=10)
    selection = (Range.new('a', 'z').to_a | Range.new('A', 'Z').to_a)
    count.times.map { selection[Random.rand()*selection.size] }.join ""
  end
  def random_digits(count=5)
    selection = (Range.new('0', '9').to_a)
    count.times.map { selection[Random.rand()*selection.size] }.join ""
  end
  def random_boolean
    selection = [true, false]
    selection[Random.rand()*selection.size]
  end
  def random_email
    random_string(5) + '@' + random_string(10) + '.com'
  end

  def random_city
    selection = ['Oakland, CA', 'San Francisco, CA', 'Berkeley, CA']
    selection[Random.rand()*selection.size]
  end

  def random_address
    random_digits(3) + ' ' + random_string(5) + 'St., ' + random_city
  end
end

# works for FG v4
FactoryGirl::SyntaxRunner.send(:include, FactoryHelpers)

