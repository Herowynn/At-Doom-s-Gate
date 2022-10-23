/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7877A6E0
/// @DnDArgument : "colour" "$940000FF"
image_blend = $940000FF & $ffffff;
image_alpha = ($940000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 0C5A7478
/// @DnDArgument : "health" "-obj_player_yellow.damageBoss"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_player_yellow.damageBoss);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 14EC612B
/// @DnDApplyTo : {obj_player_yellow}
/// @DnDArgument : "score" "20"
/// @DnDArgument : "score_relative" "1"
with(obj_player_yellow) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(20);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5433A1DD
/// @DnDArgument : "steps" "6"
alarm_set(0, 6);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 649789E9
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 57239BE6
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C5ADD18
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "var" "isDead"
	/// @DnDArgument : "value" "false"
	if(isDead == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21ABB1F6
		/// @DnDParent : 1C5ADD18
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isDead"
		isDead = true;
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 6F202671
		/// @DnDParent : 1C5ADD18
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "obj_player_yellow.maxLives"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < obj_player_yellow.maxLives)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 7F6355B8
			/// @DnDApplyTo : {obj_player_yellow}
			/// @DnDParent : 6F202671
			/// @DnDArgument : "lives" "1"
			/// @DnDArgument : "lives_relative" "1"
			with(obj_player_yellow) {
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(1);
			}
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 7D8FB828
		/// @DnDApplyTo : {obj_player_yellow}
		/// @DnDParent : 1C5ADD18
		/// @DnDArgument : "score" "400*(Level + 1)"
		/// @DnDArgument : "score_relative" "1"
		with(obj_player_yellow) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(400*(Level + 1));
		}
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0FD088B6
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "xpos" "-150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + -150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A0C6036
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "xpos" "10"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "35"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 10, y + 35, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 45314E3F
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "xpos" "150"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 150, y + -40, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7DC427B1
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "130"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosionBoss"
	/// @DnDSaveInfo : "objectid" "obj_explosionBoss"
	instance_create_layer(x + 0, y + 130, "Instances", obj_explosionBoss);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4190C2EF
	/// @DnDApplyTo : {obj_ennemy_drunk}
	/// @DnDParent : 57239BE6
	with(obj_ennemy_drunk) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64213765
	/// @DnDApplyTo : {obj_ennemy_kevin}
	/// @DnDParent : 57239BE6
	with(obj_ennemy_kevin) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43318C91
	/// @DnDApplyTo : {obj_ennemy_random}
	/// @DnDParent : 57239BE6
	with(obj_ennemy_random) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 14386BA7
	/// @DnDApplyTo : {obj_ennemy_zigzag}
	/// @DnDParent : 57239BE6
	with(obj_ennemy_zigzag) instance_destroy();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 43154778
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 151C42DB
	/// @DnDParent : 57239BE6
	/// @DnDArgument : "direction" "90"
	direction = 90;
}