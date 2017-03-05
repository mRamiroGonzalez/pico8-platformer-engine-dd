function map_draw()
 map(0,0,0,0,16,16)
end


function get_current_block(e, flag)
 return get_block_flag(e.x+1, e.y+1, flag) or 
        get_block_flag(e.x+6, e.y+1, flag) or 
        get_block_flag(e.x+1, e.y+6, flag) or 
        get_block_flag(e.x+6, e.y+6, flag)
end

function get_block_on_top(e, flag)
 return get_block_flag(e.x, e.y-1, flag) or get_block_flag(e.x+7, e.y-1, flag)
end

function get_block_in_front(e, flag)
 if (e.facing == 1) then
  return get_block_flag(e.x+8, e.y, flag) or get_block_flag(e.x+8, e.y+7, flag)
 else
  return get_block_flag(e.x-1, e.y, flag) or get_block_flag(e.x-1, e.y+7, flag)
 end
end

function get_block_below(e, flag)
 return (get_block_flag(e.x, e.y+8, flag)) or (get_block_flag(e.x+7, e.y+8, flag))
end

function get_block_flag(x, y, flag)
 return fget(mget(flr(x/8), flr(y/8)), flag)
end