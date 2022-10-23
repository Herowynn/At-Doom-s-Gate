/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76CCA54E
/// @DnDArgument : "var" "global.SelectedVehicle"
if(global.SelectedVehicle == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D00930B
	/// @DnDParent : 76CCA54E
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_player_green"
	/// @DnDSaveInfo : "objectid" "obj_player_green"
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_player_green);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C729C07
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "1"
if(global.SelectedVehicle == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5132E2D9
	/// @DnDParent : 1C729C07
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_player_yellow"
	/// @DnDSaveInfo : "objectid" "obj_player_yellow"
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_player_yellow);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77620933
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "2"
if(global.SelectedVehicle == 2)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24C39670
	/// @DnDParent : 77620933
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_player_blue"
	/// @DnDSaveInfo : "objectid" "obj_player_blue"
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_player_blue);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 116FD716
/// @DnDArgument : "var" "global.SelectedVehicle"
/// @DnDArgument : "value" "3"
if(global.SelectedVehicle == 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B22DBE0
	/// @DnDParent : 116FD716
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_player_purple"
	/// @DnDSaveInfo : "objectid" "obj_player_purple"
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_player_purple);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 269E9CF9
/// @DnDApplyTo : {obj_music}
with(obj_music) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D190E88
/// @DnDArgument : "objectid" "obj_pop_managerPart1"
/// @DnDSaveInfo : "objectid" "obj_pop_managerPart1"
instance_create_layer(0, 0, "Instances", obj_pop_managerPart1);