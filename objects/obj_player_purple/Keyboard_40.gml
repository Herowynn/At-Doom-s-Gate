/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F7A2F0A
/// @DnDArgument : "expr" "PSPEED"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += PSPEED;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 792DED0C
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height-sprite_height/2"
if(y > room_height-sprite_height/2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EA5C643
	/// @DnDParent : 792DED0C
	/// @DnDArgument : "expr" "room_height-sprite_height/2"
	/// @DnDArgument : "var" "y"
	y = room_height-sprite_height/2;
}