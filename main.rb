#encoding: Shift_JIS
require_relative "Update"
require_relative "Display"
require_relative "Search"

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
search = Search.new()
display = Display.new()



loop do
  display.output(point)

  if(search.rcheck(check)) then
    break
  end

  print("縦軸＞")
  i=gets.to_i
  print("横軸＞")
  j=gets.to_i
  if(search.echeck(i,j,check)) then
    update.memo(i,j,check,turn)
    update.write(i,j,point,turn)
    turn = !turn
  end
end