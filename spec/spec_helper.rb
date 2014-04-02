# Require our project, which in turns requires everything else
require './lib/rps.rb'
require 'pry-debugger'

# Singleton instance code
RSpec.configure do |config|
  # Configure each test to always use a new singleton instance
  config.before(:each) do
    RPS.instance_variable_set(:@__db_instance, nil)
  end
end
