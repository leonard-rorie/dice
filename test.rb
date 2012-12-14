 #!  /usr/bin/ruby1.9.3
boss="leonard rorie"

final_score=10
$player1= "Jack"                       
player1_score=0
$player2= "Henrik"
player2_score=0
player=[$player1,$player2]
turn=0

def throw_dice ()
  result=Random.rand(5) 
  return result+1
end
def player_name (x)
  if x.odd?
    $player1
  else 
    $player2
  end
end

x=0
while (player1_score <final_score) and (player2_score <final_score)
  x+=1
  puts "Now playing: "+ player_name(x)
  r=throw_dice
  puts "score "+r.to_s
  unless x.odd?
    player1_score +=r
    puts "totle score "+player1_score.to_s
  else 
    player2_score +=r
    puts "totle score "+player2_score.to_s
  end   
end

if player1_score <player2_score
  puts "player2 wins"
  else
 puts "player1 wins"
end