/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 13BE4E9C
/// @DnDArgument : "var" "rmd_speed"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "5"
/// @DnDArgument : "max" "10"
var rmd_speed = floor(random_range(5, 10 + 1));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 69B681A6
/// @DnDArgument : "angle" "-90"
image_angle = -90;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 50168475
/// @DnDArgument : "direction" "225,315"
direction = choose(225,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 52213C0A
/// @DnDArgument : "speed" "rmd_speed"
speed = rmd_speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 28DCCB3E
/// @DnDArgument : "var" "sens_rotation"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-10"
/// @DnDArgument : "max" "10"
sens_rotation = floor(random_range(-10, 10 + 1));