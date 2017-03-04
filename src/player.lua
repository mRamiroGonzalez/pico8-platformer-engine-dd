function player_init()
 p = {
  x = 64,
  y = 64,
  dx = 0,
  dy = 0,
 }
end

function player_update_position()
 p.dy = 0
 p.dx = 0

 if up_pressed() then
  p.dy = -2
 end
 if down_pressed() then
  p.dy = 2
 end
 if left_pressed() then
  p.dx = -2
 end
 if right_pressed() then
  p.dx = 2
 end

 p.x += p.dx
 p.y += p.dy
end

function player_draw()
 spr(0,p.x, p.y,1,1)
end