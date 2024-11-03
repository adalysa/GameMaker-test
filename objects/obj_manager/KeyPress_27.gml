/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C5E469
/// @DnDArgument : "var" "pause"
/// @DnDArgument : "value" "false"
if(pause == false){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 759C09F0
	/// @DnDParent : 02C5E469
	/// @DnDArgument : "var" "camera_x"
	/// @DnDArgument : "function" "camera_get_view_x"
	/// @DnDArgument : "arg" "view_camera"
	camera_x = camera_get_view_x(view_camera);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6B349A94
	/// @DnDParent : 02C5E469
	/// @DnDArgument : "var" "camera_y"
	/// @DnDArgument : "function" "camera_get_view_y"
	/// @DnDArgument : "arg" "view_camera"
	camera_y = camera_get_view_y(view_camera);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 7EBBFF77
	/// @DnDParent : 02C5E469
	/// @DnDArgument : "xpos" "camera_x"
	/// @DnDArgument : "ypos" "camera_y"
	/// @DnDArgument : "var" "pause_seq"
	/// @DnDArgument : "sequenceid" "seq_pause_menu"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "sequenceid" "seq_pause_menu"
	pause_seq = layer_sequence_create("GUI", camera_x, camera_y, seq_pause_menu);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7B06F64B
	/// @DnDParent : 02C5E469
	/// @DnDArgument : "function" "instance_deactivate_all"
	/// @DnDArgument : "arg" "true"
	instance_deactivate_all(true);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 662C7602
	/// @DnDParent : 02C5E469
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "pause"
	pause = true;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7105861B
else{	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 08ED2011
	/// @DnDParent : 7105861B
	/// @DnDArgument : "var" "pause_seq"
	layer_sequence_destroy(pause_seq);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 538E6875
	/// @DnDParent : 7105861B
	/// @DnDArgument : "function" "instance_activate_all"
	instance_activate_all();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6527085F
	/// @DnDParent : 7105861B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "pause"
	pause = false;}