module RPS
  class SendInvite < UseCase

    def run(inputs)
      return failure(:user_does_not_exist) if RPS.db.get_user(inputs[:invitee].id).nil?
      invitation = RPS.db.create_invite(inputs[:inviter], inputs[:invitee])

     # Return a success with relevant data
      success :invite => invitation
    end

  end
end
