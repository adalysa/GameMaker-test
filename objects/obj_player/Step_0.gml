/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7DA24471
/// @DnDArgument : "obj" "obj_energy_shield"
/// @DnDSaveInfo : "obj" "obj_energy_shield"
var l7DA24471_0 = false;l7DA24471_0 = instance_exists(obj_energy_shield);if(l7DA24471_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15A58B67
	/// @DnDParent : 7DA24471
	/// @DnDArgument : "expr" "-0.4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shield_energy"
	shield_energy += -0.4;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19D60B0D
	/// @DnDParent : 7DA24471
	/// @DnDArgument : "var" "shield_energy"
	/// @DnDArgument : "op" "3"
	if(shield_energy <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 118379B9
		/// @DnDApplyTo : {obj_energy_shield}
		/// @DnDParent : 19D60B0D
		with(obj_energy_shield) instance_destroy();}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6AA7B938
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 113D51B4
	/// @DnDParent : 6AA7B938
	/// @DnDArgument : "var" "shield_energy"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(shield_energy < 100){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1651642A
		/// @DnDParent : 113D51B4
		/// @DnDArgument : "expr" "0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "shield_energy"
		shield_energy += 0.1;}}