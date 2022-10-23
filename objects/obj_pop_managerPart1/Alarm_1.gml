/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1133D762
/// @DnDArgument : "var" "xpos"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "room_width-50"
var xpos = floor(random_range(50, room_width-50 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1FA39244
/// @DnDArgument : "xpos" "xpos"
/// @DnDArgument : "objectid" "obj_meteor2"
/// @DnDSaveInfo : "objectid" "obj_meteor2"
instance_create_layer(xpos, 0, "Instances", obj_meteor2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3320D988
/// @DnDArgument : "steps" "150"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 150);