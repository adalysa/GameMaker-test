/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 718044B9
/// @DnDArgument : "obj" "obj_energy_shield"
/// @DnDSaveInfo : "obj" "obj_energy_shield"
var l718044B9_0 = false;l718044B9_0 = instance_exists(obj_energy_shield);if(l718044B9_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E1933A9
	/// @DnDApplyTo : {obj_energy_shield}
	/// @DnDParent : 718044B9
	with(obj_energy_shield) instance_destroy();}