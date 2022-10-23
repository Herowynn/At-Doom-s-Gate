/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 1A8DD437
/// @DnDArgument : "x1" "-sprite_width/2"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-200"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "sprite_width/2"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-180"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -sprite_width/2, y + -200, x + sprite_width/2, y + -180, __dnd_health, $FF000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));