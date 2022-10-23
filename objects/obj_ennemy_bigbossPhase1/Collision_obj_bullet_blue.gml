/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 169AFD2B
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5FB30529
/// @DnDArgument : "health" "-obj_player_blue.damageBoss"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_blue.damageBoss);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 329A3A9A
/// @DnDApplyTo : {obj_player_blue}
/// @DnDArgument : "score" "20"
/// @DnDArgument : "score_relative" "1"
with(obj_player_blue) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(20);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5DC1A0C1
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7DA1C8CF
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 4217CB21
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52ED61EC
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "var" "isDead"
	/// @DnDArgument : "value" "false"
	if(isDead == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 388AEA0B
		/// @DnDParent : 52ED61EC
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isDead"
		isDead = true;
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 55B2A8A4
		/// @DnDParent : 52ED61EC
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "obj_player_blue.maxLives"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < obj_player_blue.maxLives)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 250FE315
			/// @DnDApplyTo : {obj_player_blue}
			/// @DnDParent : 55B2A8A4
			/// @DnDArgument : "lives" "1"
			/// @DnDArgument : "lives_relative" "1"
			with(obj_player_blue) {
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(1);
			}
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4026F361
		/// @DnDApplyTo : {obj_player_blue}
		/// @DnDParent : 52ED61EC
		/// @DnDArgument : "score" "400*(Level + 1)"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_blue) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(400*(Level + 1));
		}
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25BC1B25
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "xpos" "-150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + -150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 73EEDC26
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "xpos" "10"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "35"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 10, y + 35, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 044E431E
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "xpos" "150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2AC1EE15
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "130"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 0, y + 130, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 00D16543
	/// @DnDApplyTo : {obj_ennemy_drunk}
	/// @DnDParent : 4217CB21
	with(obj_ennemy_drunk) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 55CD2F6B
	/// @DnDApplyTo : {obj_ennemy_kevin}
	/// @DnDParent : 4217CB21
	with(obj_ennemy_kevin) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1C213C0A
	/// @DnDApplyTo : {obj_ennemy_random}
	/// @DnDParent : 4217CB21
	with(obj_ennemy_random) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3150075C
	/// @DnDApplyTo : {obj_ennemy_zigzag}
	/// @DnDParent : 4217CB21
	with(obj_ennemy_zigzag) instance_destroy();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5E830E87
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2D89FA53
	/// @DnDParent : 4217CB21
	/// @DnDArgument : "direction" "90"
	direction = 90;
}