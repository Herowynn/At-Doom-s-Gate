/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4463A8ED
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 2619CACC
/// @DnDArgument : "health" "-obj_player_green.damageBoss"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_green.damageBoss);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 5B4D9D16
/// @DnDApplyTo : {obj_player_green}
/// @DnDArgument : "score" "30"
/// @DnDArgument : "score_relative" "1"
with(obj_player_green) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(30);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0A406406
/// @DnDArgument : "steps" "6"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 178F327C
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 46F79B9B
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 31AA8A41
	/// @DnDParent : 46F79B9B
	instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5EA16900
	/// @DnDApplyTo : {obj_player_green}
	/// @DnDParent : 46F79B9B
	/// @DnDArgument : "score" "obj_player_green.Level*100"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_green) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(obj_player_green.Level*100);
	}
}