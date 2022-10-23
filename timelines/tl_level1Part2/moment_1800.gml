/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6EE45BF6
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "200"
/// @DnDArgument : "max" "room_width - 200"
randX = floor(random_range(200, room_width - 200 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6BF7F637
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "obj_ennemy_hard"
/// @DnDSaveInfo : "objectid" "obj_ennemy_hard"
instance_create_layer(randX, 200, "Instances", obj_ennemy_hard);