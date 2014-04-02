module RPS

  def self.db
    @__db_instance ||= Database.new
  end

  class Database
    attr_accessor :user, :match, :game, :invite

    def initialize
      @all_users = {}
      @all_rounds = {}
      @all_matches = {}
    end

# --- USER METHODS ---

    def create_user(user_name, password)
      new_user = User.new(user_name, password)
      @all_users[new_user.id] = new_user
      new_user
    end

    def get_user(user_id)
      @all_users[user_id]
    end

    def update_user(user_id, data_hash)

      if @all_users[user_id]
        if data_hash[:user_name]
          @all_users[user_id].user_name = data_hash[:user_name]
        end
        # Update password if user first enters
        # correct password
        if data_hash[:password]

        end

      end

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
          @all_rounds[round_id].p2_move
        end
      end
    end

# --- MATCH METHODS ---

    def create_match()
      new_match = Match.new()
      @all_matches[new_match.id] = new_match
      new_match
    end

    def get_match(match_id)
      @all_matches[match_id]
    end

    def update_match(match_id, match_hash)

    end



  end

   def self.db
    @__db_instance ||= Database.new
    end
end
