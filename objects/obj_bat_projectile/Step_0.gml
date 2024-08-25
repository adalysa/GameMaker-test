/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 67A972C8
/// @DnDArgument : "var" "relative_x"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
var relative_x = floor(random_range(-5, 5 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7F723736
/// @DnDArgument : "var" "relative_y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
var relative_y = floor(random_range(-5, 5 + 1));

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 3398C411
/// @DnDArgument : "x" "relative_x"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "relative_y"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF288C37"
effect_create_above(7, x + relative_x, y + relative_y, 0, $FF288C37 & $ffffff);