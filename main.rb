#encoding: Shift_JIS
require_relative "Update"
require_relative "Display"
require_relative "Search"

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

update = Update.new()
search = Search.new()
display = Display.new()



loop do
  display.output(point)

  if(search.rcheck(check)) then
    break
  end

  print("�c����")
  i=gets.to_i
  print("������")
  j=gets.to_i
  if(search.echeck(i,j,check)) then
    update.memo(i,j,check,turn)
    update.write(i,j,point,turn)
    turn = !turn
  end
end