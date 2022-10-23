/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 43C728C3
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 278E0E63
/// @DnDArgument : "health" "-obj_player_blue.damageBoss"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_blue.damageBoss);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 1898B404
/// @DnDApplyTo : {obj_player_blue}
/// @DnDArgument : "score" "30"
/// @DnDArgument : "score_relative" "1"
with(obj_player_blue) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(30);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7AE60E52
/// @DnDArgument : "steps" "6"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 64C5EFB4
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 1706AC67
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6F83526B
	/// @DnDParent : 1706AC67
	instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7D2C0784
	/// @DnDApplyTo : {obj_player_blue}
	/// @DnDParent : 1706AC67
	/// @DnDArgument : "score" "obj_player_blue.Level*100"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_blue) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(obj_player_blue.Level*100);
	}
}