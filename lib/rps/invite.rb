module RPS
  class Invite

    attr_reader

    @@invite_iter = 0

    def initialize(inviter_id, target_id)
      @@invite_iter += 1
      @iid = @@invite_iter
      @inviter_id = inviter_id
      @target_id = target_id
      @status = "pending"
    end

  end
end
