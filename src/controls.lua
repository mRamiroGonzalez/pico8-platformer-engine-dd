function up_pressed(short)
 if short then return btnp(2)
 else return btn(2) end
end

function down_pressed(short)
 if short then return btnp(3)
 else return btn(3) end
end
  
function left_pressed(short)
 if short then return btnp(0)
 else return btn(0) end
end
  
function right_pressed(short)
 if short then return btnp(1)
 else return btn(1) end
end