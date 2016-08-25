#置く場所が正しいかチェック
class Judge
  def error(y,x,check)
    if(y>=3 || x>=3) then
      print("エラー\n")
      return false
    end
    if(check[x+3*y] == 0) then
      return true
    else
      print("エラー\n")
      return false
    end
  end

#勝敗チェック
  def result(check)
  #横のチェック
    for i in 0..2
      if(check[i*3]+check[i*3+1]+check[i*3+2] == 3) then
        print("○の勝ち\n")
        return true
      elsif(check[i*3]+check[i*3+1]+check[i*3+2] == -3) then
        print("×の勝ち\n")
        return true
      end
    end
  #縦のチェック
    for i in 0..2
      if(check[i]+check[3+i]+check[6+i] == 3) then
        print("○の勝ち\n")
        return true
      elsif(check[i]+check[3+i]+check[6+i] == -3) then
        print("×の勝ち\n")
        return true
      end
    end

  #斜めのチェック
    if(check[0]+check[4]+check[8] == 3) then
      print("○の勝ち\n")
      return true
    elsif(check[0]+check[4]+check[8] == -3) then
      print("×の勝ち\n")
      return true
    end

    if(check[2]+check[4]+check[6] == 3)
      print("○の勝ち\n")
      return true
    elsif(check[2]+check[4]+check[6] == -3) then
      print("×の勝ち\n")
      return true
    end

  #引き分けチェック
    for i in 0..8
      if(check[i] == 0) then
        return false
      end
    end
    print("引き分け\n")
    return true
  end
end