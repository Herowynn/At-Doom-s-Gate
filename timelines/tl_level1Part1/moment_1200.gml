/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 41AEC016
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "room_width/2"
var randX = floor(random_range(60, room_width/2 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 085F6997
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(randX, 60, "Instances", obj_ennemy_drunk);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 223256F8
/// @DnDArgument : "xpos" "room_width/2 + randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(room_width/2 + randX, 60, "Instances", obj_ennemy_drunk);