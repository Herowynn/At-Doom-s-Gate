/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3769151B
/// @DnDArgument : "expr" "PSPEED"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += PSPEED;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76AE7668
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width-sprite_width/2"
if(x > room_width-sprite_width/2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55E7194C
	/// @DnDParent : 76AE7668
	/// @DnDArgument : "expr" "room_width-sprite_width/2"
	/// @DnDArgument : "var" "x"
	x = room_width-sprite_width/2;
}