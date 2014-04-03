module RPS
  class AcceptInvite < UseCase

    def run(inputs)
      invite = RPS.db.get_invite(inputs[:invite_id].to_i)
      return failure(:invite_does_not_exist) if invite.nil?
      return failure(:user_not_invited) if invite.target_id != inputs[:current_user]

      new_match = acccept_invitation(invite.id)
      # Return a success with relevant data
      success :new_match => match
    end

    def acccept_invitation(invite_id)
      RPS.db.update_invite(invite_id, {complete: true})
      invite = RPS.db.get_invite(invite_id)
      RPS.db.create_match(invite.inviter_id, invite.target_id)
    end

  end
end
