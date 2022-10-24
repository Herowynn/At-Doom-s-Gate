/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E950CDD
/// @DnDArgument : "var" "bool_wait"
/// @DnDArgument : "value" "true"
if(bool_wait == true)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6224474D
	/// @DnDParent : 1E950CDD
	/// @DnDArgument : "room" "Menu"
	/// @DnDSaveInfo : "room" "Menu"
	room_goto(Menu);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 17FC6937
	/// @DnDParent : 1E950CDD
	/// @DnDArgument : "soundid" "Mick_Gordon___02__Rip___Tear"
	/// @DnDSaveInfo : "soundid" "Mick_Gordon___02__Rip___Tear"
	audio_stop_sound(Mick_Gordon___02__Rip___Tear);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 71BCD5D5
	/// @DnDParent : 1E950CDD
	/// @DnDArgument : "soundid" "Mick_Gordon___08__Flesh___Metal"
	/// @DnDSaveInfo : "soundid" "Mick_Gordon___08__Flesh___Metal"
	audio_stop_sound(Mick_Gordon___08__Flesh___Metal);
}