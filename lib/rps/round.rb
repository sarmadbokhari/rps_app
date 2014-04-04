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
      # a status of true indicates an active round
      @status = true
    end

  end
end
