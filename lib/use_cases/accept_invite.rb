module RPS
  class AcceptInvite < UseCase

    def run(inputs)
      invite = RPS.db.get_invite(inputs[:invite_id].to_i)
      return failure(:invite_does_not_exist) if invite.nil?

      updated_invite = mark_task_complete(task)
      # Return a success with relevant data
      success :task => updated_task
    end

    def mark_task_complete(task)
      TM.db.update_task(task.id, {complete: true})
    end

  end
end
