/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2848FDF8
/// @DnDArgument : "xpos" "100"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(100, 100, "Instances", obj_ennemy_kevin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D4B69EA
/// @DnDArgument : "xpos" "room_width / 3"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(room_width / 3, 100, "Instances", obj_ennemy_kevin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 144B352E
/// @DnDArgument : "xpos" "(2*room_width) / 3"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer((2*room_width) / 3, 100, "Instances", obj_ennemy_kevin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 79D06EA7
/// @DnDArgument : "xpos" "room_width - 100"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "objectid" "obj_ennemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_ennemy_kevin"
instance_create_layer(room_width - 100, 100, "Instances", obj_ennemy_kevin);