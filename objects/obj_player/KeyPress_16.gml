/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 309B5B76
/// @DnDArgument : "var" "shield_energy"
/// @DnDArgument : "op" "2"
if(shield_energy > 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 502CFE92
	/// @DnDParent : 309B5B76
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_energy_shield"
	/// @DnDSaveInfo : "objectid" "obj_energy_shield"
	instance_create_layer(x + 0, y + 0, "Instances", obj_energy_shield);}