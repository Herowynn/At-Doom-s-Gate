/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3C9734A1
/// @DnDArgument : "var" "randY"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "room_height/2"
randY = floor(random_range(60, room_height/2 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6D55A96D
/// @DnDArgument : "xpos" "60"
/// @DnDArgument : "ypos" "randY"
/// @DnDArgument : "objectid" "obj_ennemy_zigzag"
/// @DnDSaveInfo : "objectid" "obj_ennemy_zigzag"
instance_create_layer(60, randY, "Instances", obj_ennemy_zigzag);