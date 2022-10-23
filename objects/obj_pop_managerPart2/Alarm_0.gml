/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 46369BFF
/// @DnDArgument : "var" "xpos"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "room_width-50"
var xpos = floor(random_range(50, room_width-50 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C134242
/// @DnDArgument : "xpos" "xpos"
/// @DnDArgument : "objectid" "obj_meteor1"
/// @DnDSaveInfo : "objectid" "obj_meteor1"
instance_create_layer(xpos, 0, "Instances", obj_meteor1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1E0F03A6
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);