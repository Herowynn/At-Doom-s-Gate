/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EC92259
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 05565FC6
	/// @DnDApplyTo : {obj_player_green}
	/// @DnDParent : 3EC92259
	/// @DnDArgument : "score" "5"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_green) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(5);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F3D7E76
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 76862A03
	/// @DnDApplyTo : {obj_player_yellow}
	/// @DnDParent : 1F3D7E76
	/// @DnDArgument : "score" "5"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_yellow) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(5);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 702B8EBA
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 2CECED88
	/// @DnDApplyTo : {obj_player_blue}
	/// @DnDParent : 702B8EBA
	/// @DnDArgument : "score" "5"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_blue) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(5);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69773614
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 65BCB350
	/// @DnDApplyTo : {obj_player_purple}
	/// @DnDParent : 69773614
	/// @DnDArgument : "score" "5"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_purple) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(5);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 624AB133
/// @DnDApplyTo : other
with(other) instance_destroy();