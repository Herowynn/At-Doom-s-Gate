/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 219597E8
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3F458CDB
/// @DnDArgument : "health" "-obj_player_green.damageBoss"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_green.damageBoss);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 250FB032
/// @DnDApplyTo : {obj_player_green}
/// @DnDArgument : "score" "20"
/// @DnDArgument : "score_relative" "1"
with(obj_player_green) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(20);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 249221D5
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0A4EA879
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 13397310
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AD6DF99
	/// @DnDParent : 13397310
	/// @DnDArgument : "var" "isDead"
	/// @DnDArgument : "value" "false"
	if(isDead == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D27B0D7
		/// @DnDParent : 3AD6DF99
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isDead"
		isDead = true;
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 35D4D4A4
		/// @DnDParent : 3AD6DF99
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "obj_player_green.maxLives"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < obj_player_green.maxLives)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 7B4C6A1A
			/// @DnDApplyTo : {obj_player_green}
			/// @DnDParent : 35D4D4A4
			/// @DnDArgument : "lives" "1"
			/// @DnDArgument : "lives_relative" "1"
			with(obj_player_green) {
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(1);
			}
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4E08F4DB
		/// @DnDApplyTo : {obj_player_green}
		/// @DnDParent : 3AD6DF99
		/// @DnDArgument : "score" "400*(Level + 1)"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_green) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(400*(Level + 1));
		}
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0FC7D6D5
	/// @DnDParent : 13397310
	/// @DnDArgument : "xpos" "-150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + -150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13E245D8
	/// @DnDParent : 13397310
	/// @DnDArgument : "xpos" "10"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "35"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 10, y + 35, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18A26DE1
	/// @DnDParent : 13397310
	/// @DnDArgument : "xpos" "150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 520B6680
	/// @DnDParent : 13397310
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "130"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 0, y + 130, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4EEAB049
	/// @DnDApplyTo : {obj_ennemy_drunk}
	/// @DnDParent : 13397310
	with(obj_ennemy_drunk) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 55D32111
	/// @DnDApplyTo : {obj_ennemy_kevin}
	/// @DnDParent : 13397310
	with(obj_ennemy_kevin) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66CBB98E
	/// @DnDApplyTo : {obj_ennemy_random}
	/// @DnDParent : 13397310
	with(obj_ennemy_random) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D51337D
	/// @DnDApplyTo : {obj_ennemy_zigzag}
	/// @DnDParent : 13397310
	with(obj_ennemy_zigzag) instance_destroy();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 787BFCBC
	/// @DnDParent : 13397310
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3AC10989
	/// @DnDParent : 13397310
	/// @DnDArgument : "direction" "90"
	direction = 90;
}