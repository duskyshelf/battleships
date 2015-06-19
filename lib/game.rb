require_relative 'player'
require_relative 'ship'

class Game


  def initialize
    @p1 = Player.new
    @p2 = Player.new
    @p1_sub = Ship.new 1
    @p2_sub = Ship.new 1


  end

  def go
  	puts 'Welcome to Battleships!'
    puts 'Player 1, please choose a location for your ship'
    ship1_location = gets.chomp.to_sym
    @p1.place @p1_sub, ship1_location, :E
    puts 'Player 2, please choose a location for your ship'
    ship2_location = gets.chomp.to_sym
    @p2.place @p2_sub, ship2_location, :E

    
    while true
      puts 'Player 1, please choose a location to bomb'
      p1_bomb = gets.chomp.to_sym
      puts @p2.fire p1_bomb
      return 'Game over, P1 wins' if @p2.board.all_sunk?
      puts 'Player 2, please choose a location to bomb'
      p2_bomb = gets.chomp.to_sym
      puts @p1.fire p2_bomb
      return 'Game over, P2 wins' if @p1.board.all_sunk?
    end
  end
  


end
