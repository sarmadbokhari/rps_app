module RPS
  class SignUp < UseCase

    def run(inputs)
      user = RPS.db.create_user(inputs[:username], inputs[:password])
      return failure(:user_not_registered) if user.nil?
       # Return a success with relevant data
      success :sign_in => true
    end

  end
end
