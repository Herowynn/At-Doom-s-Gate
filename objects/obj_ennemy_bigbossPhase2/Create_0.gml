/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6BE9FA97
/// @DnDArgument : "soundid" "Mick_Gordon___02__Rip___Tear"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Mick_Gordon___02__Rip___Tear"
audio_play_sound(Mick_Gordon___02__Rip___Tear, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5803A8ED
/// @DnDApplyTo : {obj_ennemy_drunk}
with(obj_ennemy_drunk) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 779126F6
/// @DnDApplyTo : {obj_ennemy_kevin}
with(obj_ennemy_kevin) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5485CE10
/// @DnDApplyTo : {obj_ennemy_random}
with(obj_ennemy_random) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 31AE6FFA
/// @DnDApplyTo : {obj_ennemy_zigzag}
with(obj_ennemy_zigzag) instance_destroy();

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 25B0AFEB
/// @DnDArgument : "path" "Path_bigBossPhase2"
/// @DnDArgument : "speed" "8  "
/// @DnDArgument : "atend" "path_action_restart"
/// @DnDSaveInfo : "path" "Path_bigBossPhase2"
path_start(Path_bigBossPhase2, 8  , path_action_restart, false);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7BA51214
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 10641479
/// @DnDArgument : "alarm" "1"
alarm_set(1, 30);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2566D3FC
/// @DnDArgument : "steps" "45"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 45);