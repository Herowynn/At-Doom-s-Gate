/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F1C8F1B
/// @DnDArgument : "var" "bulletNumber"
/// @DnDArgument : "value" "1"
if(bulletNumber == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 035D189E
	/// @DnDParent : 0F1C8F1B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_purple"
	/// @DnDSaveInfo : "objectid" "obj_bullet_purple"
	instance_create_layer(x + 0, y + -100, "Instances", obj_bullet_purple);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4649A651
/// @DnDArgument : "var" "bulletNumber"
/// @DnDArgument : "value" "2"
if(bulletNumber == 2)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BAE93A0
	/// @DnDParent : 4649A651
	/// @DnDArgument : "xpos" "20"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_purple"
	/// @DnDSaveInfo : "objectid" "obj_bullet_purple"
	instance_create_layer(x + 20, y + -100, "Instances", obj_bullet_purple);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18B8A229
	/// @DnDParent : 4649A651
	/// @DnDArgument : "xpos" "-20"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_purple"
	/// @DnDSaveInfo : "objectid" "obj_bullet_purple"
	instance_create_layer(x + -20, y + -100, "Instances", obj_bullet_purple);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D906EFB
/// @DnDArgument : "var" "bulletNumber"
/// @DnDArgument : "value" "3"
if(bulletNumber == 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 570CD16F
	/// @DnDParent : 5D906EFB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_purple"
	/// @DnDSaveInfo : "objectid" "obj_bullet_purple"
	instance_create_layer(x + 0, y + -100, "Instances", obj_bullet_purple);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 310C0456
	/// @DnDParent : 5D906EFB
	/// @DnDArgument : "xpos" "20"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_purple"
	/// @DnDSaveInfo : "objectid" "obj_bullet_purple"
	instance_create_layer(x + 20, y + -100, "Instances", obj_bullet_purple);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 102E100F
	/// @DnDParent : 5D906EFB
	/// @DnDArgument : "xpos" "-20"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_purple"
	/// @DnDSaveInfo : "objectid" "obj_bullet_purple"
	instance_create_layer(x + -20, y + -100, "Instances", obj_bullet_purple);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65B1CBB4
/// @DnDArgument : "var" "loopCount"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "numberShoot"
if(loopCount <= numberShoot)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 517240CF
	/// @DnDParent : 65B1CBB4
	/// @DnDArgument : "steps" "10"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 10);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DAE0920
	/// @DnDParent : 65B1CBB4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "loopCount"
	loopCount += 1;
}