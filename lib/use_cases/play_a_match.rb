module RPS
  class PlayMatch < UseCase

    def run(inputs)
      match = RPS.db.get_match(inputs[:match_id].to_i)
      round_winner = start_a_match(match.id, inputs)
      match_winner = get_match_winner(inputs[:match_id])
      # Return a success with relevant data
      success :round_winner => round_winner, :match_winner => match_winner
    end

    def start_a_match(match_id, inputs)
      # Rounds only instantiated when user attemps to play game
      # and there are no active rounds
      # the round_winner method must be called whenever the update_round
      # method is called
      all_rounds = RPS.db.ls_rounds
      active_round = nil

      all_rounds.each do |round_id, round|
        if round.match_id == match.id
          if round.status
            active_round = RPS.db.update_round(round.id, inputs)
          end
        end
      end

      if !active_round
        active_round = RPS.db.create_round(match_id)
        RPS.db.update_round(active_round.id, inputs)
      end

      match = RPS.get_match(match_id)
      round_winner = RPS.db.round_winner(active_round.id)
      RPS.db.update_match(match.id, {:history => active_round})

      round_winner
    end

    def get_match_winner(match_id)
      match_winner = RPS.db.match_winner(match_id)
    end


  end
end
