/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 245DC71E
/// @DnDArgument : "expr" "-obj_player.damageEnnemy"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "fireball_life"
fireball_life += -obj_player.damageEnnemy;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 136B2848
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30F46D21
/// @DnDArgument : "var" "fireball_life"
/// @DnDArgument : "op" "3"
if(fireball_life <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 436D0A37
	/// @DnDParent : 30F46D21
	instance_destroy();
}