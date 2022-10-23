/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1BF48272
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "room_width/2"
var randX = floor(random_range(60, room_width/2 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 10DA5B4C
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(randX, 60, "Instances", obj_ennemy_drunk);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C42C9FE
/// @DnDArgument : "xpos" "room_width/2 + randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_ennemy_drunk"
instance_create_layer(room_width/2 + randX, 60, "Instances", obj_ennemy_drunk);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0C4A1F50
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "room_width/2"
var randX = floor(random_range(60, room_width/2 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 744584C2
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(randX, 60, "Instances", obj_ennemy_kevin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 00C57020
/// @DnDArgument : "xpos" "room_width/2 + randX"
/// @DnDArgument : "ypos" "60"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(room_width/2 + randX, 60, "Instances", obj_ennemy_kevin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 436CD1B4
/// @DnDArgument : "xpos" "room_width/2"
/// @DnDArgument : "ypos" "room_height/2"
/// @DnDArgument : "objectid" "obj_bossComing"
/// @DnDSaveInfo : "objectid" "obj_bossComing"
instance_create_layer(room_width/2, room_height/2, "Instances", obj_bossComing);