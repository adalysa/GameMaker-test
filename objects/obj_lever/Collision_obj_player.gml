/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 35A18D6E
/// @DnDArgument : "key" "ord("E")"
var l35A18D6E_0;
l35A18D6E_0 = keyboard_check_pressed(ord("E"));
if (l35A18D6E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55AA6588
	/// @DnDParent : 35A18D6E
	/// @DnDArgument : "var" "image_index"
	if(image_index == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A34308D
		/// @DnDParent : 55AA6588
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_index"
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 47C3E863
		/// @DnDApplyTo : gate_to_open
		/// @DnDParent : 55AA6588
		with(gate_to_open) {
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 74068663
			/// @DnDParent : 47C3E863
			image_speed = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1BFE25A0
	/// @DnDParent : 35A18D6E
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C265E10
		/// @DnDParent : 1BFE25A0
		/// @DnDArgument : "var" "image_index"
		image_index = 0;
	}
}