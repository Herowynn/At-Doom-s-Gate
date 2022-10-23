/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5D7C87C8
/// @DnDArgument : "alpha" "0.25"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += 0.25;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14474081
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(image_alpha > 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 64C04984
	/// @DnDParent : 14474081
	/// @DnDArgument : "alpha" "0"
	image_alpha = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3CB10D60
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);