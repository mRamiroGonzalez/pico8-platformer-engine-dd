function badguy_init()
 b = {
  x = 10,
  y = 20,
  dx = 0,
  dy = 0,
  facing = 1,
  shots = {}
 }
end

function badguy_update_position()
 b.y += b.dy
 b.dx = (rnd(2) - 1)*4
 if b.dx > 0 then b.facing = 1 end
 if b.dx < 0 then b.facing = 0 end
 if not is_in_front_of_a_block(b) then
  b.x += b.dx
 end
 badguy_update_gravity(b)
end

function badguy_draw()
 spr(32, b.x, b.y, 1, 1)
end

function badguy_update_shots()
 shot_update_position(b.shots)
end

function badguy_shots_draw()
 shot_draw(b.shots)
end

function badguy_update_gravity(b)
 if (is_on_a_platform(b) or is_on_a_solid_block(b)) and (b.dy > 0) then
  if is_on_a_platform(b) and down_pressed(false) then
   b.dy = 4
  else
   b.dy = 0
   b.y = flr(flr(b.y)/8)*8
  end
 else
  if is_on_a_ladder(b) then
   b.dy = 0
  else
   b.dy += gravity
  end
  if b.dy >= max_falling_speed then
   b.dy = max_falling_speed
  end
 end
end