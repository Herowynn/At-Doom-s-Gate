/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 03CC6A8A
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7571CC8E
/// @DnDArgument : "lives" "-(obj_player_yellow.damageEnnemy)"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-(obj_player_yellow.damageEnnemy));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5D50A711
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3BB17741
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 62DF3936
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B8DB7B0
	/// @DnDParent : 62DF3936
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0AE25A4F
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EBBB6CD
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "var" "global.SelectedVehicle"
	if(global.SelectedVehicle == 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 64E45CD4
		/// @DnDApplyTo : {obj_player_yellow}
		/// @DnDParent : 4EBBB6CD
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_yellow) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1589F32B
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "1"
	if(global.SelectedVehicle == 1)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1334D891
		/// @DnDApplyTo : {obj_player_yellow}
		/// @DnDParent : 1589F32B
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_yellow) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 766DC482
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "2"
	if(global.SelectedVehicle == 2)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 6EF7EECF
		/// @DnDApplyTo : {obj_player_blue}
		/// @DnDParent : 766DC482
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_blue) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 616643DF
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "3"
	if(global.SelectedVehicle == 3)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3F8F6127
		/// @DnDApplyTo : {obj_player_purple}
		/// @DnDParent : 616643DF
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_purple) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 680B9383
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "100"
	var rdm_bonus = floor(random_range(0, 100 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D219950
	/// @DnDParent : 62DF3936
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "60"
	if(rdm_bonus <= 60)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 14D648D1
		/// @DnDInput : 3
		/// @DnDParent : 5D219950
		/// @DnDArgument : "var" "mybonus"
		/// @DnDArgument : "option" "obj_bonus_life"
		/// @DnDArgument : "option_1" "obj_bonus_score"
		/// @DnDArgument : "option_2" "obj_bonus_shield"
		mybonus = choose(obj_bonus_life, obj_bonus_score, obj_bonus_shield);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 265823FC
		/// @DnDParent : 5D219950
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "mybonus"
		instance_create_layer(x + 0, y + 0, "Instances", mybonus);
	}
}