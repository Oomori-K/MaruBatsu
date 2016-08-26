class Display
  def output(point)
    puts("    0    1    2")
    for y in 0..4
      y.even? ? print(y/2," ") : print("  ")
      for x in 0..10
        print(point[y][x])
      end
      print("\n")
    end
  end

  #手番の表示
  def player_turn(turn)
    turn ? (puts "<Player ○>") : (puts "<Player ×>")
  end
end
