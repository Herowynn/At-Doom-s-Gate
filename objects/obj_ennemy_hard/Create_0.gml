/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3DEFAD3C
/// @DnDArgument : "angle" "180"
/// @DnDArgument : "angle_relative" "1"
image_angle += 180;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1948386D
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "maxHealth"
maxHealth = 100;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 62EBBFB3
/// @DnDArgument : "health" "maxHealth"

__dnd_health = real(maxHealth);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 1FA7500C
/// @DnDArgument : "direction" "180,0"
direction = choose(180,0);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 17B25796
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1AFF78C6
/// @DnDArgument : "steps" "40"
alarm_set(0, 40);