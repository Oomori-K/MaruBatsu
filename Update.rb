class Update
  def write(y,x,point,turn)
    y=y*2
    x=1+4*x
    turn ? point[y][x] = "○" :  point[y][x] = "×"
  end

  def memo(y,x,check,turn)
    turn ? check[x+y*3] = 1 : check[x+y*3] = -1
  end
end