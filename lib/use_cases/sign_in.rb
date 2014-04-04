module RPS
  class SignIn < UseCase

    def run(inputs)
      user = RPS.db.get_user(inputs[:user_id])
      return failure(:user_not_registered) if user.nil?
      return failure(:incorrect_password) if inputs[:password] != user.password
       # Return a success with relevant data
      success :sign_in => true
    end

  end
end
