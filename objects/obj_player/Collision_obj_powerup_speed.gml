/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 025567F2
/// @DnDArgument : "var" "powerup_active"
/// @DnDArgument : "value" "false"
if(powerup_active == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6426423A
	/// @DnDParent : 025567F2
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "powerup_active"
	powerup_active = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 450D7F9C
	/// @DnDParent : 025567F2
	/// @DnDArgument : "expr" "default_move_speed*2"
	/// @DnDArgument : "var" "move_speed"
	move_speed = default_move_speed*2;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4B02AD91
	/// @DnDParent : 025567F2
	/// @DnDArgument : "speed" "2"
	image_speed = 2;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 17DF0D3B
	/// @DnDParent : 025567F2
	/// @DnDArgument : "steps" "300"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 300);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3961923A
	/// @DnDApplyTo : other
	/// @DnDParent : 025567F2
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 67490EA8
	/// @DnDApplyTo : other
	/// @DnDParent : 025567F2
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FF45E06C"
	with(other) effect_create_above(1, x + 0, y + 0, 1, $FF45E06C & $ffffff);}