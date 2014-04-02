module RPS

  def self.db
    @__db_instance ||= Database.new
  end

  class Database
    attr_accessor :user, :match, :game, :invite

    def initialize
      @user = {
        #uid => id obj
      }

      @match = {
        #mid => match obj
      }

      @game = {
        #gid => game obj
      }

      @invite = {
        #iid => invite obj
      }

    end

    def update_user(data_hash)
      if data_hash[:name]

      end
    end




  end
end
