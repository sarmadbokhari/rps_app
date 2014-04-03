module RPS
  class ListAllUsers < UseCase
    def run(inputs)
      user_list = RPS.db.ls_users
      return failure(:there_are_no_users) if user_list.length == 0
      # Return a success with relevant data
      success :user_list => user_list
    end
  end
end
