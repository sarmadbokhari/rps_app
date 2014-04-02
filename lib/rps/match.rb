module RPS
  class Match

    attr_reader :user_ids, :id, :p1, :p2

    def initialize(u1_id, u2_id)
      @p1 = u1_id
      @p2 = u2_id
    end

  end
end
