function _init()
 player_init()
end

function _draw()
 cls()
 print_log()
 map_draw()
 player_draw()
end

function _update()
 player_update_position()
end