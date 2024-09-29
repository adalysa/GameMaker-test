/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00232107
/// @DnDArgument : "var" "powerup_active"
/// @DnDArgument : "value" "false"
if(powerup_active == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FFD5984
	/// @DnDParent : 00232107
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "powerup_active"
	powerup_active = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A6DFB63
	/// @DnDParent : 00232107
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "star_powerup_active"
	star_powerup_active = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 667FF85D
	/// @DnDParent : 00232107
	/// @DnDArgument : "expr" "default_move_speed*1.5"
	/// @DnDArgument : "var" "move_speed"
	move_speed = default_move_speed*1.5;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5D9947F9
	/// @DnDParent : 00232107
	/// @DnDArgument : "speed" "1.5"
	image_speed = 1.5;

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0FB68FFF
	/// @DnDParent : 00232107
	/// @DnDArgument : "colour" "$FF00F2FF"
	image_blend = $FF00F2FF & $ffffff;
	image_alpha = ($FF00F2FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3EE6A9DE
	/// @DnDParent : 00232107
	/// @DnDArgument : "steps" "600"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 600);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 45073707
	/// @DnDApplyTo : other
	/// @DnDParent : 00232107
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 31C4B97C
	/// @DnDParent : 00232107
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FF3FEFFF"
	effect_create_above(1, x + 0, y + 0, 1, $FF3FEFFF & $ffffff);

	/// @DnDAction : YoYo Games.Audio.Pause_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0D8C6BD1
	/// @DnDParent : 00232107
	/// @DnDArgument : "sound" "snd_music_game"
	/// @DnDSaveInfo : "sound" "snd_music_game"
	audio_pause_sound(snd_music_game);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 42171BC9
	/// @DnDParent : 00232107
	/// @DnDArgument : "soundid" "snd_music_rampage"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_music_rampage"
	audio_play_sound(snd_music_rampage, 0, 1, 1.0, undefined, 1.0);}