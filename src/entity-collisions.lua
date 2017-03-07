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
 return (abs(s.x + 3 - b.x) < 4) and (abs(s.y + 3 - b.y) < 4) 
end