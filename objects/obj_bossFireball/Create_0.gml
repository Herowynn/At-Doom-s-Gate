/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C9CB163
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "fireball_life"
fireball_life = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 58ECFDC9
/// @DnDArgument : "angle" "-90"
image_angle = -90;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 711F3FF5
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 79B8AC95
	/// @DnDParent : 711F3FF5
	/// @DnDArgument : "x" "obj_player_green.x"
	/// @DnDArgument : "y" "obj_player_green.y"
	direction = point_direction(x, y, obj_player_green.x, obj_player_green.y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50811B71
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5EF2A40D
	/// @DnDParent : 50811B71
	/// @DnDArgument : "x" "obj_player_yellow.x"
	/// @DnDArgument : "y" "obj_player_yellow.y"
	direction = point_direction(x, y, obj_player_yellow.x, obj_player_yellow.y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C8B0614
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 233BDCE2
	/// @DnDParent : 5C8B0614
	/// @DnDArgument : "x" "obj_player_blue.x"
	/// @DnDArgument : "y" "obj_player_blue.y"
	direction = point_direction(x, y, obj_player_blue.x, obj_player_blue.y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A543CD7
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E68FBF7
	/// @DnDParent : 5A543CD7
	/// @DnDArgument : "x" "obj_player_purple.x"
	/// @DnDArgument : "y" "obj_player_purple.y"
	direction = point_direction(x, y, obj_player_purple.x, obj_player_purple.y);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7C27287B
/// @DnDArgument : "speed" "11"
speed = 11;