/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23BF1A65
/// @DnDArgument : "expr" "-PSPEED"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += -PSPEED;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 143717E8
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "sprite_height/2"
if(x < sprite_height/2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24BE1588
	/// @DnDParent : 143717E8
	/// @DnDArgument : "expr" "sprite_height/2"
	/// @DnDArgument : "var" "x"
	x = sprite_height/2;
}