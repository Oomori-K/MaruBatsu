#置く場所が正しいかチェック
class Judge
  def error(y,x,check)
    if((y < 3  && y >= 0) && (x < 3 && x >= 0))
      if check[x + 3 * y].zero?
        return true
      else
        puts "エラー"
        return false
      end
    else 
      puts "エラー"
      return false
    end
  end

#勝敗チェック
  def result(check)
  #横のチェック
    for i in 0..2
      if check[i * 3] + check[i * 3 + 1] + check[i * 3 + 2] == 3
        puts "×の勝ち"
        return true
      elsif check[i * 3] + check[i * 3 + 1] + check[i * 3 + 2] == -3
        puts "×の勝ち"
        return true
      end
    end
  #縦のチェック
    for i in 0..2
      if check[i] + check[3 + i] + check[6 + i] == 3
        puts "○の勝ち"
        return true
      elsif check[i] + check[3 + i] + check[6 + i] == -3
        puts "×の勝ち"
        return true
      end
    end

  #斜めのチェック
    if check[0] + check[4] + check[8] == 3
      puts "○の勝ち"
      return true
    elsif check[0] + check[4] + check[8] == -3
      puts "×の勝ち"
      return true
    end

    if check[2] + check[4] + check[6] == 3
      puts "○の勝ち"
      return true
    elsif check[2] + check[4] + check[6] == -3
      puts "×の勝ち"
      return true
    end

  #引き分けチェック
    for i in 0..8
      return false if check[i].zero?
    end
    puts "引き分け"
    return true
  end
end