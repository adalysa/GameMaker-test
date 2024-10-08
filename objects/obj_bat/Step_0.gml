/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 1A71A1AD
/// @DnDArgument : "x1" "-200"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-200"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "200"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "200"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l1A71A1AD_0 = collision_rectangle(x + -200, y + -200, x + 200, y + 200, obj_player, true, 1);
if((l1A71A1AD_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 38CDC48E
	/// @DnDParent : 1A71A1AD
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 76C8EDCA
	/// @DnDParent : 1A71A1AD
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A06692C
	/// @DnDParent : 1A71A1AD
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "1"
	if(alarm[0] < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 25328A8B
		/// @DnDParent : 1A06692C
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7B0E69FD
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 14BD9B5C
	/// @DnDParent : 7B0E69FD
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4A6C7443
	/// @DnDParent : 7B0E69FD
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 628F075A
	/// @DnDParent : 7B0E69FD
	/// @DnDArgument : "direction" "2"
	/// @DnDArgument : "direction_relative" "1"
	direction += 2;
}