#encoding: Shift_JIS
turn = true
point = [ [" ","�@"," ","��"," ","�@"," ","��"," ","�@"],
	  ["��","��","��","��","��","��","��","��"],
	  [" ","�@"," ","��"," ","�@"," ","��"," ","�@"],
	  ["��","��","��","��","��","��","��","��"],
	  [" ","�@"," ","��"," ","�@"," ","��"," ","�@"]
	]
loop do
  print("   0 �@  1 �@  2\n")
  for y in 0..4
    if(y%2 == 0) then
      print(y/2)
    else
      print(" ")
    end
    for x in 0..9
      print(point[y][x])
    end
    print("\n")
  end
  
  print("�c�̍��W�w�聄")
  i=gets.to_i
  i=i*2
  print("���̍��W�w�聄")
  j=gets.to_i
  j=1+j*4
  
  if(point[i][j] == "�@") then
    if(turn) then
      point[i][j] = "��"
      turn = !turn
    else
      point[i][j] = "�~"
      turn = !turn
    end
  else
    print("�G���[!\n")
  end
end

