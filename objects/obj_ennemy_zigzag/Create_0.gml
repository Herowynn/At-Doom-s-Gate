/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60BB2C2B
/// @DnDArgument : "expr" "75"
/// @DnDArgument : "var" "ENNEMY_SCORE"
ENNEMY_SCORE = 75;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 07FCDF97
/// @DnDArgument : "angle" "180"
/// @DnDArgument : "angle_relative" "1"
image_angle += 180;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6FE3EDBD
/// @DnDArgument : "lives" "4"

__dnd_lives = real(4);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 223F30AD
/// @DnDArgument : "angle" "180"
image_angle = 180;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1DC30360
/// @DnDArgument : "var" "speed_ennemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "4"
/// @DnDArgument : "max" "11"
var speed_ennemy = floor(random_range(4, 11 + 1));

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 50C65A6A
/// @DnDArgument : "path" "Path_Zigzag"
/// @DnDArgument : "speed" "speed_ennemy"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "Path_Zigzag"
path_start(Path_Zigzag, speed_ennemy, path_action_continue, true);