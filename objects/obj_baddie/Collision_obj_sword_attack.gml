/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3EFD4B86
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 27FA1C4E
/// @DnDArgument : "var" "seq_layer"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "layer_create"
/// @DnDArgument : "arg" "depth"
var seq_layer = layer_create(depth);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 4E7C39E3
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_baddie_defeat"
/// @DnDArgument : "layer" "seq_layer"
/// @DnDSaveInfo : "sequenceid" "seq_baddie_defeat"
layer_sequence_create(seq_layer, x + 0, y + 0, seq_baddie_defeat);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 5DF9F4F6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF482F8C"
effect_create_above(5, x + 0, y + 0, 1, $FF482F8C & $ffffff);