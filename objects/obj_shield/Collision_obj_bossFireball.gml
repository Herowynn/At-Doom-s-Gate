/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E1B2AF0
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 6572796A
	/// @DnDApplyTo : {obj_player_green}
	/// @DnDParent : 1E1B2AF0
	/// @DnDArgument : "score" "20"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_green) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(20);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 020E8ABB
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 6957C70D
	/// @DnDApplyTo : {obj_player_yellow}
	/// @DnDParent : 020E8ABB
	/// @DnDArgument : "score" "20"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_yellow) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(20);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25731351
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4E286E16
	/// @DnDApplyTo : {obj_player_blue}
	/// @DnDParent : 25731351
	/// @DnDArgument : "score" "20"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_blue) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(20);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70A6908B
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 57588578
	/// @DnDApplyTo : {obj_player_purple}
	/// @DnDParent : 70A6908B
	/// @DnDArgument : "score" "20"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_purple) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(20);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 335F94CC
instance_destroy();