/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 044299A9
/// @DnDApplyTo : {obj_pop_managerPart2}
with(obj_pop_managerPart2) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 55B63648
/// @DnDArgument : "objectid" "obj_pop_managerPart1"
/// @DnDSaveInfo : "objectid" "obj_pop_managerPart1"
instance_create_layer(0, 0, "Instances", obj_pop_managerPart1);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 32EC357B
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "200"
/// @DnDArgument : "max" "room_width - 200"
randX = floor(random_range(200, room_width - 200 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 781D8493
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "obj_ennemy_bigbossPhase2"
/// @DnDSaveInfo : "objectid" "obj_ennemy_bigbossPhase2"
instance_create_layer(randX, 200, "Instances", obj_ennemy_bigbossPhase2);