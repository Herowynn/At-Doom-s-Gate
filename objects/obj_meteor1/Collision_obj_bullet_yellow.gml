/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5F9C17AC
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 10604729
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 719587AA
/// @DnDApplyTo : {obj_player_yellow}
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_player_yellow) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 446A060E
/// @DnDArgument : "var" "rdm_bonus"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
var rdm_bonus = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45D95658
/// @DnDArgument : "var" "rdm_bonus"
/// @DnDArgument : "value" "1"
if(rdm_bonus == 1)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 56BB9B06
	/// @DnDInput : 3
	/// @DnDParent : 45D95658
	/// @DnDArgument : "var" "mybonus"
	/// @DnDArgument : "option" "obj_bonus_life"
	/// @DnDArgument : "option_1" "obj_bonus_score"
	/// @DnDArgument : "option_2" "obj_bonus_shield"
	mybonus = choose(obj_bonus_life, obj_bonus_score, obj_bonus_shield);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D4CB892
	/// @DnDParent : 45D95658
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "mybonus"
	instance_create_layer(x + 0, y + 0, "Instances", mybonus);
}