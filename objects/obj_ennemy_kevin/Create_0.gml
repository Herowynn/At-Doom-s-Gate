/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4115AB92
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "ENNEMY_SCORE"
ENNEMY_SCORE = 100;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2CD8BF47
/// @DnDArgument : "angle" "180"
/// @DnDArgument : "angle_relative" "1"
image_angle += 180;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7BD6C183
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 65CBB98C
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3FD5DAAA
/// @DnDArgument : "angle" "180"
image_angle = 180;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4D379198
/// @DnDArgument : "speed" "1"
speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D3C070A
/// @DnDArgument : "var" "state_kevin"
state_kevin = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2FA71F06
/// @DnDArgument : "steps" "90"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 90);