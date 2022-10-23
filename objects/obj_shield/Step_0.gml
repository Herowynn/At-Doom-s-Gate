/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56DF3848
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 340DC79D
	/// @DnDInput : 2
	/// @DnDParent : 56DF3848
	/// @DnDArgument : "expr" "obj_player_green.x"
	/// @DnDArgument : "expr_1" "obj_player_green.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = obj_player_green.x;
	y = obj_player_green.y;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 729313AF
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26FE059C
	/// @DnDInput : 2
	/// @DnDParent : 729313AF
	/// @DnDArgument : "expr" "obj_player_yellow.x"
	/// @DnDArgument : "expr_1" "obj_player_yellow.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = obj_player_yellow.x;
	y = obj_player_yellow.y;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EEB5487
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 136EDB70
	/// @DnDInput : 2
	/// @DnDParent : 2EEB5487
	/// @DnDArgument : "expr" "obj_player_blue.x"
	/// @DnDArgument : "expr_1" "obj_player_blue.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = obj_player_blue.x;
	y = obj_player_blue.y;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68EC508C
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77BA1223
	/// @DnDInput : 2
	/// @DnDParent : 68EC508C
	/// @DnDArgument : "expr" "obj_player_purple.x"
	/// @DnDArgument : "expr_1" "obj_player_purple.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = obj_player_purple.x;
	y = obj_player_purple.y;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4038414F
/// @DnDArgument : "var" "bool_end"
/// @DnDArgument : "value" "true"
if(bool_end == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 30F87D13
	/// @DnDParent : 4038414F
	/// @DnDArgument : "xscale" "-0.01"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.01"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.01;
	image_yscale += -0.01;
}