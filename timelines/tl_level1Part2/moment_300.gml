/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0BDD2A44
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_width - 100"
randX = floor(random_range(100, room_width - 100 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0B4CA296
/// @DnDArgument : "var" "randY"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_height/2 - 100"
randY = floor(random_range(100, room_height/2 - 100 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 34701992
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "randY"
/// @DnDArgument : "objectid" "obj_ennemy_random"
/// @DnDSaveInfo : "objectid" "obj_ennemy_random"
instance_create_layer(randX, randY, "Instances", obj_ennemy_random);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A851AC4
/// @DnDArgument : "xpos" "room_width/2"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(room_width/2, 60, "Instances", obj_ennemy_kevin);