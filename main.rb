require './Update'
require './Display'
require './Judge'

#どちらのターンか示す(true＝○)
  turn = true
#表示用の配列
  point = [ [" ","　"," ","│"," ","　"," ","│"," ","　"],
	    ["─","─","┼","─","─","┼","─","─"],
	    [" ","　"," ","│"," ","　"," ","│"," ","　"],
	    ["─","─","┼","─","─","┼","─","─"],
	    [" ","　"," ","│"," ","　"," ","│"," ","　"]
	  ]
#勝敗を調べる用の配列
  check = [0,0,0,0,0,0,0,0,0]

update = Update.new()
judge = Judge.new()
display = Display.new()

loop do

  display.player_turn(turn)
  display.output(point)

  if(judge.result(check)) then
    break
  end

  print("縦軸＞")
  i=gets.to_i
  print("横軸＞")
  j=gets.to_i
  if(judge.error(i,j,check)) then
    update.memo(i,j,check,turn)
    update.write(i,j,point,turn)
    turn = !turn
  end
end
