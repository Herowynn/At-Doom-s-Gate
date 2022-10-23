/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7127E7D1
/// @DnDArgument : "var" "bool_invul"
/// @DnDArgument : "value" "false"
if(bool_invul == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 40509D21
	/// @DnDParent : 7127E7D1
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0899D5DC
	/// @DnDParent : 7127E7D1
	/// @DnDArgument : "colour" "$B00000FF"
	image_blend = $B00000FF & $ffffff;
	image_alpha = ($B00000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0595E3E8
	/// @DnDParent : 7127E7D1
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invul"
	bool_invul = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1FA1136C
	/// @DnDParent : 7127E7D1
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 30D3B621
	/// @DnDParent : 7127E7D1
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5239AD94
		/// @DnDParent : 30D3B621
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 766102F3
/// @DnDApplyTo : other
with(other) instance_destroy();