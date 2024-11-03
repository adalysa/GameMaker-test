/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 553A586D
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0815C837
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "obj_manager.pause"
obj_manager.pause = false;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 74E491C2
/// @DnDArgument : "function" "instance_activate_all"
instance_activate_all();

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 6DA8C1D7
/// @DnDArgument : "var" "obj_manager.pause_seq"
layer_sequence_destroy(obj_manager.pause_seq);