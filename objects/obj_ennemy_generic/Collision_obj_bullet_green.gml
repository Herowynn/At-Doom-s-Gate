/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 10B86B72
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 1A0B2FAA
/// @DnDArgument : "lives" "-(obj_player_green.damageEnnemy)"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-(obj_player_green.damageEnnemy));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 135F2BE0
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1B45A6EF
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 48577C0C
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6A5CF75B
	/// @DnDParent : 48577C0C
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71661FC2
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1692124E
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "var" "global.SelectedVehicle"
	if(global.SelectedVehicle == 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 5DA4630F
		/// @DnDApplyTo : {obj_player_green}
		/// @DnDParent : 1692124E
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_green) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F53AA5C
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "1"
	if(global.SelectedVehicle == 1)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 5F90DB73
		/// @DnDApplyTo : {obj_player_yellow}
		/// @DnDParent : 6F53AA5C
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_yellow) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24C28B00
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "2"
	if(global.SelectedVehicle == 2)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1FDE0AF5
		/// @DnDApplyTo : {obj_player_blue}
		/// @DnDParent : 24C28B00
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_blue) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 686F3FF5
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "var" "global.SelectedVehicle"
	/// @DnDArgument : "value" "3"
	if(global.SelectedVehicle == 3)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1DA34229
		/// @DnDApplyTo : {obj_player_purple}
		/// @DnDParent : 686F3FF5
		/// @DnDArgument : "score" "other.ENNEMY_SCORE"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_purple) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(other.ENNEMY_SCORE);
		}
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 10E7C71B
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "100"
	var rdm_bonus = floor(random_range(0, 100 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C8EBCAB
	/// @DnDParent : 48577C0C
	/// @DnDArgument : "var" "rdm_bonus"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "60"
	if(rdm_bonus <= 60)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 1C1CBF71
		/// @DnDInput : 3
		/// @DnDParent : 3C8EBCAB
		/// @DnDArgument : "var" "mybonus"
		/// @DnDArgument : "option" "obj_bonus_life"
		/// @DnDArgument : "option_1" "obj_bonus_score"
		/// @DnDArgument : "option_2" "obj_bonus_shield"
		mybonus = choose(obj_bonus_life, obj_bonus_score, obj_bonus_shield);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19F5CB9D
		/// @DnDParent : 3C8EBCAB
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "mybonus"
		instance_create_layer(x + 0, y + 0, "Instances", mybonus);
	}
}