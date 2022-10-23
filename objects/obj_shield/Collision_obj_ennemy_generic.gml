/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E2E564B
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 78960968
	/// @DnDApplyTo : {obj_player_green}
	/// @DnDParent : 4E2E564B
	/// @DnDArgument : "score" "25"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_green) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(25);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F342EC4
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1296C0F7
	/// @DnDApplyTo : {obj_player_yellow}
	/// @DnDParent : 6F342EC4
	/// @DnDArgument : "score" "25"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_yellow) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(25);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 452553EF
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5F120E15
	/// @DnDApplyTo : {obj_player_blue}
	/// @DnDParent : 452553EF
	/// @DnDArgument : "score" "25"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_blue) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(25);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7988CC95
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1AF2563C
	/// @DnDApplyTo : {obj_player_purple}
	/// @DnDParent : 7988CC95
	/// @DnDArgument : "score" "25"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_purple) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(25);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 25B826C1
/// @DnDApplyTo : other
with(other) instance_destroy();