class Update
  def write(y,x,point,turn)
    y=y*2
    x=1+x*4
    if(turn) then
      point[y][x] = "○"
    else
      point[y][x] = "×"
    end
  end

  def memo(y,x,check,turn)
    if(turn) then
      check[x+y*3] = 1
    else
      check[x+y*3] = -1
    end
  end
end