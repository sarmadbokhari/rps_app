module RPS
  class User
  attr_accessor :username, :id
  attr_reader :password

    @@user_iter = 0

    def initialize(username, password)
      @username = username
      @password = password
      @@user_iter +=1
      @id = @@user_iter
    end

  end
end
