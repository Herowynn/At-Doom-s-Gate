/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 29C0EA8C
/// @DnDArgument : "var" "randx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "(-room_width/2) + 50"
/// @DnDArgument : "max" "(room_width/2) + 50"
var randx = floor(random_range((-room_width/2) + 50, (room_width/2) + 50 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4EE786E7
/// @DnDArgument : "var" "waitTime"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "120"
/// @DnDArgument : "max" "240"
var waitTime = floor(random_range(120, 240 + 1));

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 4BE35B9C
/// @DnDInput : 4
/// @DnDArgument : "var" "Ennemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "obj_ennemy_drunk"
/// @DnDArgument : "option_2" "obj_ennemy_kevin"
/// @DnDArgument : "option_3" "obj_ennemy_zigzag"
var Ennemy = choose(0, obj_ennemy_drunk, obj_ennemy_kevin, obj_ennemy_zigzag);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0C2C5E10
/// @DnDArgument : "xpos" "randx"
/// @DnDArgument : "ypos" "30"
/// @DnDArgument : "objectid" "Ennemy"
instance_create_layer(randx, 30, "Instances", Ennemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3E5C06FC
/// @DnDArgument : "steps" "waitTime"
/// @DnDArgument : "alarm" "3"
alarm_set(3, waitTime);