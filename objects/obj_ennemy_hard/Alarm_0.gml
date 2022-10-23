/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7BD3D083
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "50"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_boss_bullet"
/// @DnDSaveInfo : "objectid" "obj_boss_bullet"
instance_create_layer(x + 0, y + 50, "Instances", obj_boss_bullet);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 651EAC05
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);