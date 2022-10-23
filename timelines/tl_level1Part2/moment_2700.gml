/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 19EC28E6
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_width - 100"
randX = floor(random_range(100, room_width - 100 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5A4122FD
/// @DnDArgument : "var" "randY"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_height/2 - 100"
randY = floor(random_range(100, room_height/2 - 100 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D69A245
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "randY"
/// @DnDArgument : "objectid" "obj_ennemy_random"
/// @DnDSaveInfo : "objectid" "obj_ennemy_random"
instance_create_layer(randX, randY, "Instances", obj_ennemy_random);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 16A93A3C
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_width - 100"
randX = floor(random_range(100, room_width - 100 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1F2B1823
/// @DnDArgument : "var" "randY"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "room_height/2 - 100"
randY = floor(random_range(100, room_height/2 - 100 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 29D3221D
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "randY"
/// @DnDArgument : "objectid" "obj_ennemy_random"
/// @DnDSaveInfo : "objectid" "obj_ennemy_random"
instance_create_layer(randX, randY, "Instances", obj_ennemy_random);