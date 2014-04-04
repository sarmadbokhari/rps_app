module RPS
  class SelectAMatch < UseCase

    def run(inputs)

      match = RPS.db.get_match(inputs[:match_id])
      return failure(:game_does_not_exist) if match.nil?
      return failure(:user_not_a_game_player) if ((inputs[:current_user] != match.p1_id) && (inputs[:current_user] != match.p2_id))
      return failure(:game_no_longer_active) if !match.status

      # Return a success with relevant data
      success :can_play => true
    end

  end
end
