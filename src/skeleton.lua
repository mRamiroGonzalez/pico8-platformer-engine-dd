function _init()
 constants_init()
 player_init()
 badguys_init()
 badguys_create()
end

function _draw()
 cls()
 map_draw()
 print_log()
 player_draw()
 player_shots_draw()
 badguys_draw()
end

function _update()
 player_update_position()
 player_update_shots()
 badguys_update_position()
end