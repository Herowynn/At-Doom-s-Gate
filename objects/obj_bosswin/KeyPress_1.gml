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
}