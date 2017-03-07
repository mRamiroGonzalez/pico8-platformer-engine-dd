function player_init()
 p = {
  x = 80,
  y = 60,
  dx = 0,
  dy = 0,
  facing = 1,
  jumping = false,
  shots = {}
 }
end

function player_update_position()
 update_from_keys_pressed()
 update_gravity()
end

function player_draw()
 spr(0, p.x, p.y, 1, 1)
end

function player_update_shots()
 shot_update_position(p.shots)
end

function player_shots_draw()
 shot_draw(p.shots)
end

function update_from_keys_pressed()
 p.dx = 0

 if action_1_pressed(true) then
  add(p.shots, shot_create(p))
 end

 if is_on_a_ladder(p) then
  if up_pressed(false) then
   p.dy = -default_y_speed
  elseif down_pressed(false) then
   p.dy = default_y_speed
  end
 else
  if up_pressed(true) then
   jump()
  end
 end

 if left_pressed(false) then
  p.facing = 0
  if not is_in_front_of_a_block(p) then
   p.dx = -default_x_speed
  end
 end

 if right_pressed(false) then
  p.facing = 1
  if not is_in_front_of_a_block(p) then
   p.dx = default_x_speed
  end
 end

 if is_below_a_block(p) then 
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
 if (is_on_a_platform(p) or is_on_a_solid_block(p)) and (p.dy > 0) then
  if is_on_a_platform(p) and down_pressed(false) then
   p.dy = 4
  else 
   p.jumping = false
   p.dy = 0
   p.y = flr(flr(p.y)/8)*8
  end
 else
  if is_on_a_ladder(p) then
   p.jumping = false
   p.dy = 0
  else
   p.dy += gravity
  end
  if p.dy >= max_falling_speed then
   p.dy = max_falling_speed
  end
 end
end