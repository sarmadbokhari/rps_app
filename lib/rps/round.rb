module RPS
  class Round
    attr_reader :id, :match_id, :move_hash

    @@round_iter = 0

    def initialize(match_id, move_hash)
      @@round_iter += 1
      @rid = @@round_iter
      @winner = ""
      @match_id = match_id
      @p1_move = nil
      @p2_move = nil
      @move_hash = {}
      if move_hash[:p1_move]
        @p1_move = move_hash[:p1_move]
      end
      if move_hash[:p2_move]
        @p2_move = move_hash[:p2_move]
      end
    end

    def winner

    end

  end
end
