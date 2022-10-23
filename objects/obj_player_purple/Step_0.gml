/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 2C0C1209
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" " Level * 100"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
if(__dnd_score >=  Level * 100)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 23830093
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "score" "-Level*100"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(-Level*100);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F20D890
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Level"
	Level += 1;

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 67B40FF6
	/// @DnDInput : 8
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "option_1" "1"
	/// @DnDArgument : "option_2" "2"
	/// @DnDArgument : "option_3" "3"
	/// @DnDArgument : "option_4" "4"
	/// @DnDArgument : "option_5" "5"
	/// @DnDArgument : "option_6" "6"
	/// @DnDArgument : "option_7" "7"
	Random = choose(0, 1, 2, 3, 4, 5, 6, 7);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74566B30
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	if(Random == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DD677B9
		/// @DnDParent : 74566B30
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "PSPEED"
		PSPEED += 1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 71E17DFA
		/// @DnDParent : 74566B30
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_playerSpeed"
		/// @DnDSaveInfo : "objectid" "obj_playerSpeed"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_playerSpeed);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 161AB783
		/// @DnDParent : 74566B30
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07AEF0E8
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "1"
	if(Random == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AD5523F
		/// @DnDParent : 07AEF0E8
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bulletSpeed"
		bulletSpeed += 1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0D858A63
		/// @DnDParent : 07AEF0E8
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_bulletSpeed"
		/// @DnDSaveInfo : "objectid" "obj_bulletSpeed"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_bulletSpeed);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7E6BAD53
		/// @DnDParent : 07AEF0E8
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BB03E8C
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "2"
	if(Random == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38AFA671
		/// @DnDParent : 4BB03E8C
		/// @DnDArgument : "expr" "-5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "reloadTime"
		reloadTime += -5;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B22B33A
		/// @DnDParent : 4BB03E8C
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_reloadTime"
		/// @DnDSaveInfo : "objectid" "obj_reloadTime"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_reloadTime);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7663FD7C
		/// @DnDParent : 4BB03E8C
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AFA0104
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "3"
	if(Random == 3)
	{
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 0B47812F
		/// @DnDParent : 6AFA0104
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "maxLives"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < maxLives)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 463D2C54
			/// @DnDParent : 0B47812F
			/// @DnDArgument : "lives" "1"
			/// @DnDArgument : "lives_relative" "1"
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(1);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5C6CF173
			/// @DnDParent : 0B47812F
			/// @DnDArgument : "xpos" "room_width/2"
			/// @DnDArgument : "ypos" "room_height/2"
			/// @DnDArgument : "objectid" "obj_bonusLife"
			/// @DnDSaveInfo : "objectid" "obj_bonusLife"
			instance_create_layer(room_width/2, room_height/2, "Instances", obj_bonusLife);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 7719202F
			/// @DnDParent : 0B47812F
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "3"
			alarm_set(3, 60);
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 06210DF8
		/// @DnDParent : 6AFA0104
		/// @DnDArgument : "score" "100"
		/// @DnDArgument : "score_relative" "1"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(100);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 498DFD00
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "4"
	if(Random == 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F6A4004
		/// @DnDParent : 498DFD00
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "damageEnnemy"
		damageEnnemy += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FA340B8
		/// @DnDParent : 498DFD00
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "damageBoss"
		damageBoss += 10;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 303177EE
		/// @DnDParent : 498DFD00
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_attackIncrease"
		/// @DnDSaveInfo : "objectid" "obj_attackIncrease"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_attackIncrease);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5F0AA46C
		/// @DnDParent : 498DFD00
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20B0E986
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "5"
	if(Random == 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FE02331
		/// @DnDParent : 20B0E986
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "maxLives"
		maxLives += 1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 32E944DB
		/// @DnDParent : 20B0E986
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_lifeStock"
		/// @DnDSaveInfo : "objectid" "obj_lifeStock"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_lifeStock);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 439C1ADE
		/// @DnDParent : 20B0E986
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11188D39
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "6"
	if(Random == 6)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05BAF59D
		/// @DnDParent : 11188D39
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "numberShoot"
		numberShoot += 1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 22B0778E
		/// @DnDParent : 11188D39
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_bulletIncrease"
		/// @DnDSaveInfo : "objectid" "obj_bulletIncrease"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_bulletIncrease);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 52136307
		/// @DnDParent : 11188D39
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16710D29
	/// @DnDParent : 2C0C1209
	/// @DnDArgument : "var" "Random"
	/// @DnDArgument : "value" "7"
	if(Random == 7)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A20387B
		/// @DnDParent : 16710D29
		/// @DnDArgument : "var" "bulletNumber"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "3"
		if(bulletNumber < 3)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65C249FB
			/// @DnDParent : 1A20387B
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bulletNumber"
			bulletNumber += 1;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0AEC0C1E
			/// @DnDParent : 1A20387B
			/// @DnDArgument : "xpos" "room_width/2"
			/// @DnDArgument : "ypos" "room_height/2"
			/// @DnDArgument : "objectid" "obj_bulletIncrease"
			/// @DnDSaveInfo : "objectid" "obj_bulletIncrease"
			instance_create_layer(room_width/2, room_height/2, "Instances", obj_bulletIncrease);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5FA46298
			/// @DnDParent : 1A20387B
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "3"
			alarm_set(3, 60);
		}
	}
}