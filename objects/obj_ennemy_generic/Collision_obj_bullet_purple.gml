/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2C780CD8
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7ED516C0
/// @DnDArgument : "lives" "-(obj_player_purple.damageEnnemy)"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-(obj_player_purple.damageEnnemy));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 473B6876
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5E5EB619
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 6D2AE46B
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17C51D39
	/// @DnDParent : 6D2AE46B
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 264CBA65
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5229F9FA
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "var" "global.SelectedVehicle"
	if(global.SelectedVehicle == 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1D98DFA4
		/// @DnDApplyTo : {obj_player_purple}
		/// @DnDParent : 5229F9FA
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_purple) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21A2AE49
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "1"
	if(global.SelectedVehicle == 1)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 281AAA2E
		/// @DnDApplyTo : {obj_player_yellow}
		/// @DnDParent : 21A2AE49
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_yellow) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46819AC7
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "2"
	if(global.SelectedVehicle == 2)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 5C931F6D
		/// @DnDApplyTo : {obj_player_blue}
		/// @DnDParent : 46819AC7
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_blue) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53B6BBDD
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "3"
	if(global.SelectedVehicle == 3)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 26E09B47
		/// @DnDApplyTo : {obj_player_purple}
		/// @DnDParent : 53B6BBDD
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_purple) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 34F84F49
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "100"
	var rdm_bonus = floor(random_range(0, 100 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0601C880
	/// @DnDParent : 6D2AE46B
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "60"
	if(rdm_bonus <= 60)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 77E6F538
		/// @DnDInput : 3
		/// @DnDParent : 0601C880
		/// @DnDArgument : "var" "mybonus"
		/// @DnDArgument : "option" "obj_bonus_life"
		/// @DnDArgument : "option_1" "obj_bonus_score"
		/// @DnDArgument : "option_2" "obj_bonus_shield"
		mybonus = choose(obj_bonus_life, obj_bonus_score, obj_bonus_shield);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E91A16F
		/// @DnDParent : 0601C880
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "mybonus"
		instance_create_layer(x + 0, y + 0, "Instances", mybonus);
	}
}