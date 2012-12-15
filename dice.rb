 #!  /usr/bin/ruby1.9.3
boss="leonard rorie"

final_score=10
class Player
  attr_accessor :score
  def initialize(name)
    @name=name
    @score=0
  end
  def name
    @name
  end
end

$player1=Player.new( "Jack")
$player2=Player.new( "Henrik")

def throw_dice ()
  result=Random.rand(5) 
  return result+1
end

def player(x)
  if x.odd?
    $player1
  else 
    $player2
  end
end

turn=0
while ($player1.score <final_score) and ($player2.score <final_score)
  turn+=1
  puts "Now playing: "+ player(turn).name
  r=throw_dice
  puts "score "+r.to_s
  player(turn).score += r
  puts "total score " + player(turn).score.to_s
end

if $player1.score < $player2.score
  puts "#{$player2.name} wins"
else
  puts "#{$player1.name} wins"
end

puts $player1.inspect
puts $player2.inspect
