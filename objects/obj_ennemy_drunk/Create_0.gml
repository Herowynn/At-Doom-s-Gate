/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 669F3979
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "ENNEMY_SCORE"
ENNEMY_SCORE = 50;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 1E82BA8F
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 13124AA1
/// @DnDArgument : "var" "speed_ennemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "10"
var speed_ennemy = floor(random_range(3, 10 + 1));

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 5BBB6281
/// @DnDArgument : "path" "Path_Drunk"
/// @DnDArgument : "speed" "speed_ennemy"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDSaveInfo : "path" "Path_Drunk"
path_start(Path_Drunk, speed_ennemy, path_action_continue, false);