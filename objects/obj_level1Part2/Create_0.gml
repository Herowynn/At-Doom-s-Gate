/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 02358304
/// @DnDArgument : "ypos" "10"
/// @DnDArgument : "objectid" "obj_music"
/// @DnDSaveInfo : "objectid" "obj_music"
instance_create_layer(0, 10, "Instances", obj_music);

/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 6DCF99C0
/// @DnDArgument : "timeline" "tl_level1Part2"
/// @DnDSaveInfo : "timeline" "tl_level1Part2"
timeline_index = tl_level1Part2;
timeline_loop = 0;
timeline_running = 1;