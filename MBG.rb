#encoding: Shift_JIS

  
#�ǂ���̃^�[��������(true����)
  turn = true
#�\���p�̔z��
  point = [ [" ","�@"," ","��"," ","�@"," ","��"," ","�@"],
	    ["��","��","��","��","��","��","��","��"],
	    [" ","�@"," ","��"," ","�@"," ","��"," ","�@"],
	    ["��","��","��","��","��","��","��","��"],
	    [" ","�@"," ","��"," ","�@"," ","��"," ","�@"]
	  ]
#���s�𒲂ׂ�p�̔z��
  check = [0,0,0,0,0,0,0,0,0]

#�}�X�������Ă��邩�`�F�b�N,���͂����������`�F�b�N
def errorcheck(y,x,point)
  if(y>=3 || x>=3) then
    return false
  end
  y=y*2
  x=1+x*4
  if(point[y][x] == "�@") then
    return true
  else
    return false
  end
end

#�\��
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

#�`��z��ɒl������
def write(y,x,point,turn)
  y=y*2
  x=1+x*4
  if(turn) then
    point[y][x] = "��"
  else
    point[y][x] = "�~"
  end
end

#���s�`�F�b�N�p�z��ɒl������
def memo(y,x,check,turn)
  if(turn) then
    check[x+y*3] = 1
  else
    check[x+y*3] = -1
  end
end

#���s�̃`�F�b�N
def resultcheck(check)
  #���̃`�F�b�N
  for i in 0..2
    if(check[i*3]+check[i*3+1]+check[i*3+2] == 3) then
      return 1
    elsif(check[i*3]+check[i*3+1]+check[i*3+2] == -3) then
      return -1
    end
  end

  #�c�̃`�F�b�N
  for i in 0..2
    if(check[i]+check[3+i]+check[6+i] == 3) then
      return 1
    elsif(check[i]+check[3+i]+check[6+i] == -3) then
      return -1
    end
  end

  #�΂߂̃`�F�b�N
  if(check[0]+check[4]+check[8] == 3) then
    return 1
  elsif(check[0]+check[4]+check[8] == -3) then
    return -1
  end

  if(check[2]+check[4]+check[6] == 3)
    return 1
  elsif(check[2]+check[4]+check[6] == -3) then
    return -1
  end

  #���������`�F�b�N
  for i in 0..8
    if(check[i] == 0) then
      return 0
    end
  end
  return 2
end

loop do
  output(point)

  res = resultcheck(check)
  if(res == 1) then
    print("���̏���\n")
    break
  elsif(res == -1) then
    print("�~�̏���\n")
    break
  elsif(res == 2) then
    print("��������\n")
    break
  end

  print("�c����")
  i=gets.to_i
  print("������")
  j=gets.to_i

  if(errorcheck(i,j,point)) then
    memo(i,j,check,turn)
    write(i,j,point,turn)
    turn = !turn
  else
    print("�G���[\n")
  end
end

