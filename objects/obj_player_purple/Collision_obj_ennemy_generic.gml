/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28D3AD9A
/// @DnDArgument : "var" "bool_invul"
/// @DnDArgument : "value" "false"
if(bool_invul == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 043E0ED8
	/// @DnDParent : 28D3AD9A
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57F6C651
	/// @DnDParent : 28D3AD9A
	/// @DnDArgument : "colour" "$B00000FF"
	image_blend = $B00000FF & $ffffff;
	image_alpha = ($B00000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B3F9E93
	/// @DnDParent : 28D3AD9A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invul"
	bool_invul = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 575644D4
	/// @DnDParent : 28D3AD9A
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 42997753
	/// @DnDParent : 28D3AD9A
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 6C37FDFF
		/// @DnDParent : 42997753
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A7AE0C8
/// @DnDApplyTo : other
with(other) instance_destroy();