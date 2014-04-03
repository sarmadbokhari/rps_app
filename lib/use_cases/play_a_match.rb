module RPS
  class PlayMatch < UseCase

    def run(inputs)

      match = RPS.db.get_match(inputs[:match_id].to_i)
      # return failure(:game_does_not_exist) if match.nil?
      # return failure(:user_not_a_game_player) if ((inputs[:current_user] != match.p1_id) || (inputs[:current_user] != match.p2_id))
      # return failure(:game_no_longer_active) if match.status

      start_a_match(match.id, inputs)

      # Return a success with relevant data
      success :project => proj
    end

    def start_a_match(match_id, inputs)
      # Rounds only instantiated when user attemps to play game
      # and there are no active rounds
      all_rounds = RPS.db.ls_rounds
      active_round = nil

      all_rounds.each do |round|
        if round.match_id == match.id
          if round.status
            RPS.db.update_round(round.id, inputs)
          end
        end
      end
    end

  end
end
