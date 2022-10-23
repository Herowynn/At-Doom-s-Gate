/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 697ED58A
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 00186742
/// @DnDArgument : "font" "ft_score"
/// @DnDSaveInfo : "font" "ft_score"
draw_set_font(ft_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 11F0B1B8
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "800"
/// @DnDArgument : "caption" ""Level: ""
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(room_width/2, 800, string("Level: ") + string(__dnd_score));