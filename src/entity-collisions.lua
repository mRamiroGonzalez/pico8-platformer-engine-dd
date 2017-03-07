function shots_collide_badguys(shots, badguys) 
 for b in all(badguys) do
  for s in all(shots) do
   if collision_shot_badguy(s, b) then
    del(shots, s)
    del(badguys, b)
   end
  end
 end
end


function collision_shot_badguy(s, b)
 if s.mir_x then
  return ((s.x >= b.x   and b.x >= s.x+s.dx) or s.x == b.x)
     and ((s.y-8 <= b.y and b.y <= s.y+8) or s.y == b.y)
 else
  return ((s.x <= b.x   and b.x <= s.x+s.dx) or s.x == b.x)
     and ((s.y-8 <= b.y and b.y <= s.y+8) or s.y == b.y)
 end
end