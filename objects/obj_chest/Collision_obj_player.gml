/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 50092056
/// @DnDArgument : "key" "ord("E")"
var l50092056_0;
l50092056_0 = keyboard_check_pressed(ord("E"));
if (l50092056_0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 7B689F1D
	/// @DnDParent : 50092056
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-20"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "7"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FF1DFF00"
	effect_create_above(7, x + 0, y + -20, 1, $FF1DFF00 & $ffffff);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 759408DF
	/// @DnDParent : 50092056
	/// @DnDArgument : "expr" "50"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.coins"
	obj_player.coins += 50;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 62D107D6
	/// @DnDParent : 50092056
	/// @DnDArgument : "objind" "obj_chest_open"
	/// @DnDSaveInfo : "objind" "obj_chest_open"
	instance_change(obj_chest_open, true);
}