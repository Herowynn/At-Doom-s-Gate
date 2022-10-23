/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E9DF908
/// @DnDArgument : "var" "bool_invul"
/// @DnDArgument : "value" "false"
if(bool_invul == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 3D62891B
	/// @DnDParent : 4E9DF908
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 62FAA019
	/// @DnDParent : 4E9DF908
	/// @DnDArgument : "colour" "$B00000FF"
	image_blend = $B00000FF & $ffffff;
	image_alpha = ($B00000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3821AA51
	/// @DnDParent : 4E9DF908
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invul"
	bool_invul = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5E8C387E
	/// @DnDParent : 4E9DF908
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2522E070
	/// @DnDParent : 4E9DF908
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1538CF59
		/// @DnDParent : 2522E070
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C1357B7
/// @DnDApplyTo : other
with(other) instance_destroy();