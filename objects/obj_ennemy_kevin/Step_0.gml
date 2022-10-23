/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20BBD2E2
/// @DnDArgument : "var" "state_kevin"
/// @DnDArgument : "value" "1"
if(state_kevin == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 450E6908
	/// @DnDParent : 20BBD2E2
	/// @DnDArgument : "speed" "1.25"
	/// @DnDArgument : "speed_relative" "1"
	speed += 1.25;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 4978DC14
	/// @DnDParent : 20BBD2E2
	/// @DnDArgument : "direction" "270"
	direction = 270;
}