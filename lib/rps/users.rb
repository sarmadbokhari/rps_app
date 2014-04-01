module RPS
  class Users

    @@user_iter = 0

    def initialize(username)
      @username = username
      @@user_iter +=1
      @user_id = @@user_iter
    end


  end
end
