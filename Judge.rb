#encoding: Shift_JIS
#�u���ꏊ�����������`�F�b�N
class Judge
  def error(y,x,check)
    if(y>=3 || x>=3) then
      print("�G���[\n")
      return false
    end
    if(check[x+3*y] == 0) then
      return true
    else
      print("�G���[\n")
      return false
    end
  end

#���s�`�F�b�N
  def result(check)
  #���̃`�F�b�N
    for i in 0..2
      if(check[i*3]+check[i*3+1]+check[i*3+2] == 3) then
        print("���̏���\n")
        return true
      elsif(check[i*3]+check[i*3+1]+check[i*3+2] == -3) then
        print("�~�̏���\n")
        return true
      end
    end
  #�c�̃`�F�b�N
    for i in 0..2
      if(check[i]+check[3+i]+check[6+i] == 3) then
        print("���̏���\n")
        return true
      elsif(check[i]+check[3+i]+check[6+i] == -3) then
        print("�~�̏���\n")
        return true
      end
    end

  #�΂߂̃`�F�b�N
    if(check[0]+check[4]+check[8] == 3) then
      print("���̏���\n")
      return true
    elsif(check[0]+check[4]+check[8] == -3) then
      print("�~�̏���\n")
      return true
    end

    if(check[2]+check[4]+check[6] == 3)
      print("���̏���\n")
      return true
    elsif(check[2]+check[4]+check[6] == -3) then
      print("�~�̏���\n")
      return true
    end

  #���������`�F�b�N
    for i in 0..8
      if(check[i] == 0) then
        return false
      end
    end
    print("��������\n")
    return true
  end
end