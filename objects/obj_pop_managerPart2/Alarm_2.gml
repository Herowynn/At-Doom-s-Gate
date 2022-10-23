/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 75613039
/// @DnDArgument : "var" "waitTime"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "480"
/// @DnDArgument : "max" "780"
var waitTime = floor(random_range(480, 780 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7357B6C1
/// @DnDArgument : "var" "rdm_rescue"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "100"
var rdm_rescue = floor(random_range(0, 100 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C8DDF0A
/// @DnDArgument : "var" "rdm_rescue"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "50"
if(rdm_rescue <= 50)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3B5AD59B
	/// @DnDParent : 1C8DDF0A
	/// @DnDArgument : "var" "xpos"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "60"
	/// @DnDArgument : "max" "room_width - 100"
	var xpos = floor(random_range(60, room_width - 100 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4E630105
	/// @DnDParent : 1C8DDF0A
	/// @DnDArgument : "var" "ypos"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "60"
	/// @DnDArgument : "max" "room_height - 100"
	var ypos = floor(random_range(60, room_height - 100 + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 44798B94
	/// @DnDParent : 1C8DDF0A
	/// @DnDArgument : "xpos" "xpos"
	/// @DnDArgument : "ypos" "ypos"
	/// @DnDArgument : "objectid" "obj_rescue"
	/// @DnDSaveInfo : "objectid" "obj_rescue"
	instance_create_layer(xpos, ypos, "Instances", obj_rescue);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5B318E38
	/// @DnDParent : 1C8DDF0A
	/// @DnDArgument : "steps" "waitTime"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, waitTime);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 230B1157
/// @DnDArgument : "steps" "waitTime"
/// @DnDArgument : "alarm" "2"
alarm_set(2, waitTime);