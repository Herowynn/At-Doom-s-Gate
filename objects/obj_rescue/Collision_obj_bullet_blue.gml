/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58638E4C
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 249D648D
/// @DnDArgument : "health" "-50"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-50);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 08F4D5B2
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 0E317715
/// @DnDApplyTo : {obj_player_blue}
/// @DnDArgument : "score" "-100"
/// @DnDArgument : "score_relative" "1"
with(obj_player_blue) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(-100);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C370C5B
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 2B14EF98
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4225D8F9
	/// @DnDApplyTo : {obj_player_blue}
	/// @DnDParent : 2B14EF98
	/// @DnDArgument : "score" "-500"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_blue) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(-500);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7F63AC85
	/// @DnDParent : 2B14EF98
	instance_destroy();
}