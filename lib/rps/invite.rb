module RPS
  class Invite

    attr_reader :id, :inviter_id, :target_id
    attr_accessor :status

    @@invite_iter = 0

    def initialize(inviter_id, target_id)
      @@invite_iter += 1
      @id = @@invite_iter

      @inviter_id = inviter_id
      @target_id = target_id
      # a status of false indicates that the invitation
      # has not yet been accepted
      @status = false
    end

  end
end
