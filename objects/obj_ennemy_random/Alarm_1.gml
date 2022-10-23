/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 3E54D79C
/// @DnDArgument : "direction" "180,0,225,270,315"
direction = choose(180,0,225,270,315);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 42A3324D
/// @DnDArgument : "var" "randomSpeed"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "10"
var randomSpeed = floor(random_range(3, 10 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 76A98509
/// @DnDArgument : "speed" "randomSpeed"
speed = randomSpeed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 64AB1D98
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 60);