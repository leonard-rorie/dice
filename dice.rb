 #!  /usr/bin/ruby1.9.3
boss="leonard rorie"

final_score=10
#$player1= "Jack"                       
#player1_score=0
#$player2= "Henrik"
#player2_score=0
player=[$player1,$player2]
turn=0
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
def player_name (x)
  if x.odd?
    $player1.name
  else 
    $player2.name
  end
end

x=0
while ($player1.score <final_score) and ($player2.score <final_score)
  x+=1
  puts "Now playing: "+ player_name(x)
  r=throw_dice
  puts "score "+r.to_s
  unless x.odd?
    $player1.score +=r
    puts "totle score "+$player1.score.to_s
  else 
    $player2.score +=r
    puts "totle score "+$player2.score.to_s
  end   
end

if $player1.score < $player2.score
  puts "#{$player2.name} wins"
else
  puts "#{$player1.name} wins"
end
puts $player1.inspect
puts $player2.inspect