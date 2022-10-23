/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0DB448CE
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 198F182C
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2CC20BDC
	/// @DnDParent : 198F182C
	/// @DnDArgument : "lives" "-(obj_player_green.damageEnnemy)"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-(obj_player_green.damageEnnemy));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1562E361
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 771A025B
	/// @DnDParent : 1562E361
	/// @DnDArgument : "lives" "-(obj_player_yellow.damageEnnemy)"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-(obj_player_yellow.damageEnnemy));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57584933
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 53956E22
	/// @DnDParent : 57584933
	/// @DnDArgument : "lives" "-(obj_player_blue.damageEnnemy)"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-(obj_player_blue.damageEnnemy));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E94E4FF
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 5E3F2352
	/// @DnDParent : 0E94E4FF
	/// @DnDArgument : "lives" "-(obj_player_purple.damageEnnemy)"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-(obj_player_purple.damageEnnemy));
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 602C89B9
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0ABF84D8
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 76A67A76
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71B5629C
	/// @DnDParent : 76A67A76
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0682BE93
	/// @DnDParent : 76A67A76
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 503FF86C
	/// @DnDApplyTo : {obj_player_blue}
	/// @DnDParent : 76A67A76
	/// @DnDArgument : "score" "other.ENNEMY_SCORE"
	/// @DnDArgument : "score_relative" "1"
	with(obj_player_blue) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(other.ENNEMY_SCORE);
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7927D708
	/// @DnDParent : 76A67A76
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "100"
	var rdm_bonus = floor(random_range(0, 100 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63EB9D63
	/// @DnDParent : 76A67A76
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "60"
	if(rdm_bonus <= 60)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 3B7F15FC
		/// @DnDInput : 3
		/// @DnDParent : 63EB9D63
		/// @DnDArgument : "var" "mybonus"
		/// @DnDArgument : "option" "obj_bonus_life"
		/// @DnDArgument : "option_1" "obj_bonus_score"
		/// @DnDArgument : "option_2" "obj_bonus_shield"
		mybonus = choose(obj_bonus_life, obj_bonus_score, obj_bonus_shield);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19E7EBDC
		/// @DnDParent : 63EB9D63
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "mybonus"
		instance_create_layer(x + 0, y + 0, "Instances", mybonus);
	}
}