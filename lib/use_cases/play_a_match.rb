module RPS
  class PlayAMatch < UseCase

    def run(inputs)

      match = RPS.db.get_match(inputs[:match_id])
      return failure(:game_does_not_exist) if match.nil?

      return failure(:user_not_a_game_player) if ((inputs[:current_user] != match.p1_id) || (inputs[:current_user] != match.p2_id))

      all_rounds = RPS.db.ls_rounds

      emp = TM.db.get_emp(inputs[:employee_id].to_i)
      return failure(:employee_does_not_exist) if emp.nil?

      add_employee_to_project(proj, emp)

      # Return a success with relevant data
      success :employee => emp, :project => proj
    end

    def add_employee_to_project(proj, emp)
      TM.db.update_project(proj.id, {eid: emp.id})
    end

  end
end
