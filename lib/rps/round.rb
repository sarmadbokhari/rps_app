module RPS
  class Round

    attr_reader :rid, :match_id, :move_hash

    @@round_iter = 0

    def initialize(match_id, move_hash = {})
      @@round_iter += 1
      @rid = @@round_iter
      @winner = ""
      @match_id = match_id
      @p1_move = nil
      @p2_move = nil
      @move_hash = move_hash
      if move_hash[:p1_move]
        @p1_move = move_hash[:p1_move]
      end
      if move_hash[:p2_move]
        @p2_move = move_hash[:p2_move]
      end
    end

    def winner
      if move_hash.length == 2
        if (p1_move == "rock")
          winner = p2_move == "scissors" ? @player1 : @player2
          winner == @player1 ? @p1_wins+=1 : @p2_wins +=1
        elsif (p1_move == "paper")
            winner = p2_move == "rock" ? @player1 : @player2
            winner == @player1 ? @p1_wins+=1 : @p2_wins +=1
        else
          winner = p2_move == "paper" ? @player1 : @player2
          winner == @player1 ? @p1_wins+=1 : @p2_wins +=1
        end
      end

    end

  end
end
