/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A0E5F64
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "powerup_active"
powerup_active = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 084B57FC
/// @DnDArgument : "expr" "default_move_speed"
/// @DnDArgument : "var" "move_speed"
move_speed = default_move_speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 427CF127
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43B91E28
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "star_powerup_active"
star_powerup_active = false;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1A29C456
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;