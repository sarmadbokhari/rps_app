module RPS

  def self.db
    @__db_instance ||= Database.new
  end

  class Database
    attr_accessor :all_users, :all_matches, :all_rounds , :all_invites

    def initialize
      # @all_users = {user_id => user_obj}
      @all_users = {}
      # @all_rounds = {round_id => round_obj}
      @all_rounds = {}
      # @all_matches = {match_id => match_obj}
      @all_matches = {}
      # @all_invites = {invite_id => invite_obj}
      @all_invites = {}
    end

# --- USER METHODS ---

    def create_user(username, password)
      new_user = User.new(username, password)
      @all_users[new_user.id] = new_user
      new_user
    end

    def get_user(user_id)
      @all_users[user_id]
    end

    def update_user(user_id, data_hash)

      if @all_users[user_id]
        if data_hash[:username]
          @all_users[user_id].user_name = data_hash[:username]
        end
        # Update password if user first enters
        # correct password
        if data_hash[:password]

        end
      end
    end

    def ls_users
      @all_users
    end

# --- ROUND METHODS ---

    def create_round(match_id, move_hash)
      new_round = Round.new(match_id, move_hash)
      @all_rounds[new_round.id] = new_round
      new_round
    end

    def get_round(round_id)
      @all_rounds[round_id]
    end

    def update_round(round_id, data_hash)
      if @all_rounds[round_id]
        if data_hash[:p1_move]
          @all_rounds[round_id].p1_move = data_hash[:p1_move]
        end
        if data_hash[:p2_move]
          @all_rounds[round_id].p2_move = data_hash[:p2_move]
        end
      end
    end

    def round_winner
      return nil if move_hash[:p1_move] == move_hash[:p2_move]

      if move_hash.length == 2
        if (@p1_move == "rock")
          winner = @p2_move == "scissors" ? "p1" : "p2"
        elsif (p1_move == "paper")
            winner = @p2_move == "rock" ? "p1" : "p2"
        else
          winner = @p2_move == "paper" ? "p1" : "p2"
        end
      end
    end

    def ls_rounds
      @all_rounds
    end

# --- MATCH METHODS ---
# Match refers to a game of 3-5 rounds

    def create_match(user1_id, user2_id)
      new_match = Match.new(user1_id, user2_id)
      @all_matches[new_match.id] = new_match
      new_match
    end

    def get_match(match_id)
      @all_matches[match_id]
    end

    def ls_matches
      @all_matches
    end

# --- INVITE METHODS ---

  def create_invite(inviter_id, target_id)
    rsvp = Invite.new(inviter_id, target_id)
  end

  def get_invite(invite_id)
    @all_invites[invite_id]
  end

  def update_invite(invite_id)
    if @all_invites[invite_id]
      @all_invites[invite_id].status = true
    end
    nil
  end

end
end
