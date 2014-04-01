require 'io/console'
class RPSPlayer
  # (No specs are required for RPSPlayer)
  #
  # Complete the `start` method so that it uses your RPS class to present
  # and play a game through the terminal.
  #
  # The first step is to read (gets) the two player names. Feed these into
  # a new instance of your RPS class. Then `puts` and `gets` in a loop that
  # lets both players play the game.
  #
  # When the game ends, ask if the player wants to play again.
  def start
    # TODO

    # PRO TIP: Instead of using plain `gets` for grabbing a player's
    #          move, this line does the same thing but does NOT show
    #          what the player is typing! :D
    # This is also why we needed to require 'io/console'
    # move = STDIN.noecho(&:gets)

    puts "Enter your name, Player 1: "
    player_1 = gets.chomp
    puts "Enter your name, Player 2: "
    player_2 = gets.chomp

    @game = RPS.new(player_1, player_2)

    winner = ""

    loop do
      puts "Enter your move " + player_1 + ":"
      p1move = STDIN.noecho(&:gets)
      p1move = p1move.chomp
      puts "Enter your move " + player_2 + ":"
      p2move = STDIN.noecho(&:gets)
      p2move = p2move.chomp
      winner = @game.play(p1move, p2move)
      puts winner
      break if winner == "The game is over." || winner.split.last == "game!"
    end
  end

end
