/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 36ED5744
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 41678403
/// @DnDArgument : "soundid" "Mick_Gordon___02__Rip___Tear"
/// @DnDSaveInfo : "soundid" "Mick_Gordon___02__Rip___Tear"
audio_stop_sound(Mick_Gordon___02__Rip___Tear);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4961B2D3
/// @DnDArgument : "objectid" "obj_level1Part2"
/// @DnDSaveInfo : "objectid" "obj_level1Part2"
instance_create_layer(0, 0, "Instances", obj_level1Part2);