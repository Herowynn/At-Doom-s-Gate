/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1B2240AB
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "room_width/2"
var randX = floor(random_range(60, room_width/2 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4D2BD00C
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(randX, 60, "Instances", obj_ennemy_kevin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6B293985
/// @DnDArgument : "xpos" "room_width/2 + randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(room_width/2 + randX, 60, "Instances", obj_ennemy_kevin);