/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FB033F3
/// @DnDArgument : "var" "isDead"
/// @DnDArgument : "value" "false"
if(isDead == false)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 541E1ABA
	/// @DnDParent : 5FB033F3
	/// @DnDArgument : "var" "randx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "(-room_width/2) - 50"
	/// @DnDArgument : "max" "(room_width/2) - 50"
	var randx = floor(random_range((-room_width/2) - 50, (room_width/2) - 50 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 78A0CBE6
	/// @DnDParent : 5FB033F3
	/// @DnDArgument : "var" "waitTime"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "360"
	/// @DnDArgument : "max" "420"
	var waitTime = floor(random_range(360, 420 + 1));

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 0BDEAD50
	/// @DnDInput : 4
	/// @DnDParent : 5FB033F3
	/// @DnDArgument : "var" "Ennemy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "obj_ennemy_drunk"
	/// @DnDArgument : "option_2" "obj_ennemy_zigzag"
	/// @DnDArgument : "option_3" "obj_ennemy_kevin"
	var Ennemy = choose(0, obj_ennemy_drunk, obj_ennemy_zigzag, obj_ennemy_kevin);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5EA91838
	/// @DnDParent : 5FB033F3
	/// @DnDArgument : "xpos" "randx"
	/// @DnDArgument : "ypos" "30"
	/// @DnDArgument : "objectid" "Ennemy"
	instance_create_layer(randx, 30, "Instances", Ennemy);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2CD9F94E
	/// @DnDParent : 5FB033F3
	/// @DnDArgument : "steps" "waitTime"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, waitTime);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1ADD0375
/// @DnDArgument : "steps" "waitTime"
/// @DnDArgument : "alarm" "3"
alarm_set(3, waitTime);