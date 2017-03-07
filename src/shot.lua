function shot_init(e, mir_x)
 s = {
  x = e.x, 
  y = e.y,
  dx = 0, 
  dy = 0,
  size = 8,
  mir_x = mir_x,
  gravity = 0,
  speed = 5,
  dist_left = 300
 }
 return s
end

function shot_create(e)
 mir_x = (e.facing != 0)
 print(mir_x)
 s = shot_init(e, mir_x)
 return s
end

function shot_update_position(shots)
 for s in all(shots) do
  if s.mir_x then
   s.dx = s.speed
  else
   s.dx = -s.speed
  end
  if gravity != 0 then
   s.dy += s.gravity
  end
  s.dist_left -= s.speed
  s.x += s.dx
  s.y += s.dy
 end
 for s in all(shots) do
  if is_too_far(s) or hits_a_wall(s) then
   del(shots,s)
  end
 end
end

function shot_draw(shots)
 for s in all(shots) do 
  spr(16, s.x, s.y, 1, 1, mir_x)
 end
end

function is_too_far(s)
 return s.dist_left <= 0 
end

function hits_a_wall(s)
 return get_block_in_front(s, 0)
end