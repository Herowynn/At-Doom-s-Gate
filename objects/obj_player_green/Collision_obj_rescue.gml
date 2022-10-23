/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 313B76DC
/// @DnDApplyTo : {obj_player_green}
/// @DnDArgument : "value" "100"
with(obj_player_green) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l313B76DC_0 = __dnd_health == 100;
}
if(l313B76DC_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 0C0C6EB9
	/// @DnDParent : 313B76DC
	/// @DnDArgument : "score" "obj_player_green.Level*100"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(obj_player_green.Level*100);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 06F2D0F1
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3180D094
	/// @DnDParent : 06F2D0F1
	/// @DnDArgument : "score" "obj_player_green.Level*50"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(obj_player_green.Level*50);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 38BC1339
/// @DnDApplyTo : other
with(other) instance_destroy();