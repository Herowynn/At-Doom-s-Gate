/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5CA8ADAA
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4C232991
/// @DnDArgument : "font" "ft_score"
/// @DnDSaveInfo : "font" "ft_score"
draw_set_font(ft_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 76BF37EF
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""Experience: ""
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(30, 30, string("Experience: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 0F0D6E22
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "room_height-50"
/// @DnDArgument : "sprite" "spr_player_purple_life"
/// @DnDSaveInfo : "sprite" "spr_player_purple_life"
var l0F0D6E22_0 = sprite_get_width(spr_player_purple_life);
var l0F0D6E22_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l0F0D6E22_2 = __dnd_lives; l0F0D6E22_2 > 0; --l0F0D6E22_2) {
	draw_sprite(spr_player_purple_life, 0, 50 + l0F0D6E22_1, room_height-50);
	l0F0D6E22_1 += l0F0D6E22_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 19861692
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "90"
/// @DnDArgument : "caption" ""Level: ""
/// @DnDArgument : "var" "Level"
draw_text(30, 90, string("Level: ") + string(Level));