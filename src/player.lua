function player_init()
 p = {
  x = 80,
  y = 40,
  dx = 0,
  dy = 0,
 }
end

function player_update_position()
 update_from_keys_pressed()
 update_gravity()
end

function player_draw()
 spr(0, p.x, p.y, 1, 1)
end

function update_from_keys_pressed()
 p.dx = 0
 if up_pressed() then
  p.dy = -2
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

function update_gravity()
 if get_block_below(p, 0) then
  if (p.dy > 0) then
   p.dy = 0
   p.y = flr(flr(p.y)/8)*8
  end 
 else
  p.dy += gravity
  if p.dy >= max_falling_speed then
   p.dy = max_falling_speed
  end
 end
end