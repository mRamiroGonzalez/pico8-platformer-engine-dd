function _init()
 constants_init()
 player_init()
end

function _draw()
 cls()
 map_draw()
 print_log()
 player_draw()
 player_shots_draw()
end

function _update()
 player_update_position()
 player_update_shots()
end