module RPS
end

require_relative 'rps/database.rb'
require_relative 'rps/match.rb'
require_relative 'rps/rounds.rb'
require_relative 'rps/users.rb'
require_relative 'use_case.rb'

Dir[File.dirname(__FILE__) + '/use_cases/*.rb'].each { |file| require file }
