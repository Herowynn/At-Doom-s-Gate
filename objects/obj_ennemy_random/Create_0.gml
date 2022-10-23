/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0EAC0771
/// @DnDArgument : "angle" "180"
/// @DnDArgument : "angle_relative" "1"
image_angle += 180;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 790702BE
/// @DnDArgument : "lives" "4"

__dnd_lives = real(4);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 531B041E
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 230F9B64
/// @DnDArgument : "var" "randomSpeed"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "10"
var randomSpeed = floor(random_range(3, 10 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0E68F946
/// @DnDArgument : "speed" "randomSpeed"
speed = randomSpeed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0E175589
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 60);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D719F2F
/// @DnDArgument : "expr" "75"
/// @DnDArgument : "var" "ENNEMY_SCORE"
ENNEMY_SCORE = 75;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 776583DE
/// @DnDArgument : "steps" "600"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 600);