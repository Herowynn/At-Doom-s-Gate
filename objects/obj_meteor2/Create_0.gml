/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 36D07CB3
/// @DnDArgument : "var" "rdm_speed"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "5"
/// @DnDArgument : "max" "10"
var rdm_speed = floor(random_range(5, 10 + 1));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 40069BEC
/// @DnDArgument : "angle" "-90"
image_angle = -90;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 71B74D27
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 52213C0A
/// @DnDArgument : "speed" "rdm_speed"
speed = rdm_speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3C400C34
/// @DnDArgument : "var" "sens_rotation"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-10"
/// @DnDArgument : "max" "10"
sens_rotation = floor(random_range(-10, 10 + 1));