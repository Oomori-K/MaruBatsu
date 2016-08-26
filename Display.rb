class Display
  def output(point)
    print("    0     1     2\n")
    for y in 0..4
      if(y%2 == 0) then
        print(y/2," ")
      else
        print("  ")
      end
      for x in 0..9
        print(point[y][x])
      end
      print("\n")
    end
  end

  #手番の表示
  def player_turn(turn)
    if turn == true
      puts "<Player 1>"
    else
      puts "<Player 2>"
    end
  end
end
