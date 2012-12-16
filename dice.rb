 #!  /usr/bin/ruby1.9.3

require 'singleton'

boss="leonard rorie"

class Player
  attr_accessor :score, :turns
  def initialize(name)
    @name=name
    @score=0
    @turns=0
  end
  def name
    @name
  end
  def throw_dice
    1 + Random.rand(5) 
  end
end

class Game
  include Singleton
  attr_accessor :player, :final_score
  def initialize
    @final_score=10
    @player1=Player.new( "Jack")
    @player2=Player.new( "Henrik")
  end
  def player(turn)
    if turn.odd?
      @player1
    else 
      @player2
    end
  end
  def play
    turn=0
    while (@player1.score <@final_score) and (@player2.score <@final_score)
      turn+=1
      puts "Now playing: "+ player(turn).name
      r=player(turn).throw_dice
      puts "score "+r.to_s
      player(turn).score += r
      player(turn).turns += 1
      puts "total score " + player(turn).score.to_s
    end
  end
  def score
    if @player1.score < @player2.score
      puts "#{@player2.name} wins"
    else
      puts "#{@player1.name} wins"
    end      
    puts @player1.inspect
    puts @player2.inspect
  end
end

game = Game.instance
game.play
game.score
