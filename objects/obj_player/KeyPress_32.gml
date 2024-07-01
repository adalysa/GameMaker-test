/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 532C1E5A
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "sword"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_sword_attack"
/// @DnDSaveInfo : "objectid" "obj_sword_attack"
var sword = instance_create_layer(x + 0, y + 0, "Instances", obj_sword_attack);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 027C873F
/// @DnDArgument : "expr" "image_xscale"
/// @DnDArgument : "var" "sword.image_xscale"
sword.image_xscale = image_xscale;