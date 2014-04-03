module RPS
  class Round


    attr_reader :id, :match_id
    attr_accessor :p1_move, :p2_move, :status


    @@round_iter = 0

    def initialize(match_id)
      @@round_iter += 1
      @id = @@round_iter
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
      # a status of true indicates an active
      @status = true
    end


  end
end
