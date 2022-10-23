/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18AF2B93
/// @DnDArgument : "expr" "-PSPEED"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += -PSPEED;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57866621
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "sprite_width/2"
if(y < sprite_width/2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CF24594
	/// @DnDParent : 57866621
	/// @DnDArgument : "expr" "sprite_width/2"
	/// @DnDArgument : "var" "y"
	y = sprite_width/2;
}