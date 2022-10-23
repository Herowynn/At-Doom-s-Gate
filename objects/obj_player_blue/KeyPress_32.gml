/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2829803C
/// @DnDArgument : "var" "bool_reload"
/// @DnDArgument : "value" "false"
if(bool_reload == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 62056564
	/// @DnDParent : 2829803C
	/// @DnDArgument : "soundid" "laser2"
	/// @DnDSaveInfo : "soundid" "laser2"
	audio_play_sound(laser2, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6894BDFA
	/// @DnDParent : 2829803C
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79054DF0
	/// @DnDParent : 2829803C
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_reload"
	bool_reload = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51993F0F
	/// @DnDParent : 2829803C
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "loopCount"
	loopCount = 2;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 25F4F89B
	/// @DnDParent : 2829803C
	/// @DnDArgument : "steps" "reloadTime"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, reloadTime);
}