/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0489DC29
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 56450389
/// @DnDArgument : "health" "-obj_player_green.damageBoss/2"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_green.damageBoss/2);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 46AD63AB
/// @DnDApplyTo : {obj_player_green}
/// @DnDArgument : "score" "40"
/// @DnDArgument : "score_relative" "1"
with(obj_player_green) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(40);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4539697C
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3BE6317E
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 1FEB1823
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 209ABD4F
	/// @DnDParent : 1FEB1823
	instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3EE8A0DC
	/// @DnDParent : 1FEB1823
	/// @DnDArgument : "room" "BossWin"
	/// @DnDSaveInfo : "room" "BossWin"
	room_goto(BossWin);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 63FD316C
	/// @DnDParent : 1FEB1823
	/// @DnDArgument : "soundid" "Mick_Gordon___02__Rip___Tear"
	/// @DnDSaveInfo : "soundid" "Mick_Gordon___02__Rip___Tear"
	audio_stop_sound(Mick_Gordon___02__Rip___Tear);
}