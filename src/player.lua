function player_init()
 p = {
  x = 80,
  y = 40,
  dx = 0,
  dy = 0,
  facing = 1,
  jumping = false
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

 if up_pressed(true) then
  jump()
 end

 if left_pressed(false) then
  p.facing = 0
  if not is_in_front_of_a_block() then
   p.dx = -default_x_speed
  end
 end

 if right_pressed(false) then
  p.facing = 1
  if not is_in_front_of_a_block() then
   p.dx = default_x_speed
  end
 end

 if is_below_a_block() then 
  p.dy = default_y_speed 
 end

 p.x += p.dx
 p.y += p.dy
end

function jump()
 if not p.jumping then
  p.jumping = true
  p.dy = -jumping_height
 end
end

function update_gravity()
 if is_on_a_platform() and (p.dy > 0) then
   p.jumping = false
   p.dy = 0
   p.y = flr(flr(p.y)/8)*8
 else
  p.dy += gravity
  if p.dy >= max_falling_speed then
   p.dy = max_falling_speed
  end
 end
end

function is_on_a_platform()
 return get_block_below(p, 0) or get_block_below(p, 1)
end

function is_in_front_of_a_block()
 return get_block_in_front(p, 0)
end

function is_below_a_block()
 return get_block_on_top(p, 0)
end