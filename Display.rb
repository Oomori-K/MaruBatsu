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
end