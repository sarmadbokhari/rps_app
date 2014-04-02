module RPS
  class Match
    attr_reader :p1, :p2, :id

    @@match_iter = 0

    def initialize(u1_id, u2_id)
      @@match_iter += 1
      @id = @@match_iter
      @p1 = u1_id
      @p2 = u2_id
    end

  end
end
