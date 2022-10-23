/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7DE8BF90
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 21D20A72
/// @DnDArgument : "health" "-obj_player_purple.damageBoss"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_purple.damageBoss);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 52ED21BC
/// @DnDApplyTo : {obj_player_purple}
/// @DnDArgument : "score" "20"
/// @DnDArgument : "score_relative" "1"
with(obj_player_purple) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(20);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2340E4BE
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7F10D730
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 7EEE7B3F
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10603B7A
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "var" "isDead"
	/// @DnDArgument : "value" "false"
	if(isDead == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C6F3BD3
		/// @DnDParent : 10603B7A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isDead"
		isDead = true;
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3BCC76F3
		/// @DnDParent : 10603B7A
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "obj_player_purple.maxLives"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < obj_player_purple.maxLives)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 70CCA9A5
			/// @DnDApplyTo : {obj_player_purple}
			/// @DnDParent : 3BCC76F3
			/// @DnDArgument : "lives" "1"
			/// @DnDArgument : "lives_relative" "1"
			with(obj_player_purple) {
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(1);
			}
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0BE48E1D
		/// @DnDApplyTo : {obj_player_purple}
		/// @DnDParent : 10603B7A
		/// @DnDArgument : "score" "400*(Level + 1)"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_purple) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(400*(Level + 1));
		}
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6A0B925A
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "xpos" "-150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + -150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BFB224E
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "xpos" "10"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "35"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 10, y + 35, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D527E03
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "xpos" "150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 465A2E2F
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "130"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 0, y + 130, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 02250617
	/// @DnDApplyTo : {obj_ennemy_drunk}
	/// @DnDParent : 7EEE7B3F
	with(obj_ennemy_drunk) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5EA5D490
	/// @DnDApplyTo : {obj_ennemy_kevin}
	/// @DnDParent : 7EEE7B3F
	with(obj_ennemy_kevin) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2135EC9E
	/// @DnDApplyTo : {obj_ennemy_random}
	/// @DnDParent : 7EEE7B3F
	with(obj_ennemy_random) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7389D50B
	/// @DnDApplyTo : {obj_ennemy_zigzag}
	/// @DnDParent : 7EEE7B3F
	with(obj_ennemy_zigzag) instance_destroy();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0DE7A13C
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7DDD5D05
	/// @DnDParent : 7EEE7B3F
	/// @DnDArgument : "direction" "90"
	direction = 90;
}