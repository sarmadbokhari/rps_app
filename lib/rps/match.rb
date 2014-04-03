module RPS
  class Match
    attr_reader :p1_id, :p2_id, :id, :current_round_id
    attr_accessor :status

    @@match_iter = 0

    def initialize(u1_id, u2_id)
      @@match_iter += 1
      @id = @@match_iter
      @p1_id = u1_id
      @p2_id = u2_id
      @status = false
      @num_rounds = 0
      # 0 - there is no winner for the match
      # 1 - the winner is player 1
      # 2 - the winner is player 2
      @winner = 0
    end

  end
end
