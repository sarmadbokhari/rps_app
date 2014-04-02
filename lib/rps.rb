module RPS
end

require_relative 'rps/database.rb'
require_relative 'rps/match.rb'
require_relative 'rps/round.rb'
require_relative 'rps/user.rb'
require_relative 'use_case.rb'

Dir[File.dirname(__FILE__) + '/use_cases/*.rb'].each { |file| require file }
