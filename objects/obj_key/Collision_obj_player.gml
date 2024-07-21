/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6FD0967B
/// @DnDApplyTo : chest_to_open
with(chest_to_open) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E3525F4
	/// @DnDParent : 6FD0967B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "locked"
	locked = false;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0EF7B747
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 36686655
/// @DnDArgument : "type" "1"
/// @DnDArgument : "where" "1"
effect_create_above(1, 0, 0, 0, $FFFFFF & $ffffff);