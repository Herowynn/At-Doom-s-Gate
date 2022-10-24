/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7BA51214
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 1ED9A813
/// @DnDArgument : "direction" "180,0"
direction = choose(180,0);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 30A4F710
/// @DnDArgument : "speed" "8"
speed = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 434B62CE
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "isDead"
isDead = false;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 36CF0647
/// @DnDApplyTo : {obj_ennemy_drunk}
with(obj_ennemy_drunk) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6F46F234
/// @DnDApplyTo : {obj_ennemy_kevin}
with(obj_ennemy_kevin) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7336FF9D
/// @DnDApplyTo : {obj_ennemy_random}
with(obj_ennemy_random) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 04E1719C
/// @DnDApplyTo : {obj_ennemy_zigzag}
with(obj_ennemy_zigzag) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2566D3FC
/// @DnDArgument : "steps" "45"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 45);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3994E892
/// @DnDArgument : "steps" "180"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 180);