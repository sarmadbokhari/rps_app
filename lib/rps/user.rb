module RPS
  class User
  attr_accessor :username

    @@user_iter = 0

    def initialize(username)
      @username = username
      @@user_iter +=1
      @uid = @@user_iter
    end




  end
end
