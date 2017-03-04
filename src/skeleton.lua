function _init()
 constants_init()
 player_init()
end

function _draw()
 cls()
 map_draw()
 print_log()
 player_draw()
end

function _update()
 player_update_position()
end