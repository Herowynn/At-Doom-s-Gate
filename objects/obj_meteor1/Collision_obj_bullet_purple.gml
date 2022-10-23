/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4F6FA652
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 75C643EF
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 390D0851
/// @DnDApplyTo : {obj_player_purple}
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_player_purple) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 60D2F185
/// @DnDArgument : "var" "rdm_bonus"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
var rdm_bonus = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72AE7EEC
/// @DnDArgument : "var" "rdm_bonus"
/// @DnDArgument : "value" "1"
if(rdm_bonus == 1)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 15378ADF
	/// @DnDInput : 3
	/// @DnDParent : 72AE7EEC
	/// @DnDArgument : "var" "mybonus"
	/// @DnDArgument : "option" "obj_bonus_life"
	/// @DnDArgument : "option_1" "obj_bonus_score"
	/// @DnDArgument : "option_2" "obj_bonus_shield"
	mybonus = choose(obj_bonus_life, obj_bonus_score, obj_bonus_shield);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3EB05761
	/// @DnDParent : 72AE7EEC
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "mybonus"
	instance_create_layer(x + 0, y + 0, "Instances", mybonus);
}