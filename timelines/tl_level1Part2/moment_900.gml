/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1F4E439F
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_width - 100"
randX = floor(random_range(100, room_width - 100 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 19AA218A
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(randX, 60, "Instances", obj_ennemy_drunk);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 37E2A0A5
/// @DnDArgument : "xpos" "room_width / 2"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(room_width / 2, 60, "Instances", obj_ennemy_drunk);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 63074CA6
/// @DnDArgument : "xpos" "room_width / 2 + randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(room_width / 2 + randX, 60, "Instances", obj_ennemy_drunk);