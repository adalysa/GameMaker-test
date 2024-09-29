/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 502D28D6
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l502D28D6_0 = false;l502D28D6_0 = instance_exists(obj_player);if(l502D28D6_0){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 16278946
	/// @DnDInput : 4
	/// @DnDParent : 502D28D6
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_distance"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "obj_player.x"
	/// @DnDArgument : "arg_3" "obj_player.y"
	var distance = point_distance(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 7FDDEC18
	/// @DnDParent : 502D28D6
	/// @DnDArgument : "sound" "fly_sound"
	/// @DnDArgument : "volume" "50/distance"
	audio_sound_gain(fly_sound, 50/distance, 0);}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3392B541
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "value" "x - xprevious"
var x_movement = x - xprevious;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40F88170
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "op" "1"
if(x_movement < 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6C77D03E
	/// @DnDParent : 40F88170
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;image_yscale = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 00676018
else{	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 4F4B4BF9
	/// @DnDParent : 00676018
	image_xscale = 1;image_yscale = 1;}