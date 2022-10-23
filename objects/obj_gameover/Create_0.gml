/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 5A003266

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 755302CA
/// @DnDArgument : "expr" "variable_global_exists("player_score")"
if(variable_global_exists("player_score"))
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 478E2063
	/// @DnDParent : 755302CA
	/// @DnDArgument : "score" "global.player_score"
	
	__dnd_score = real(global.player_score);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B25BE31
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_wait"
bool_wait = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3AE5E2A8
/// @DnDArgument : "steps" "120"
alarm_set(0, 120);