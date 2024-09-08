/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C615FC0
/// @DnDArgument : "var" "hearts"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "max_hearts"
if(hearts < max_hearts){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CD179C7
	/// @DnDParent : 5C615FC0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6CA56399
	/// @DnDApplyTo : other
	/// @DnDParent : 5C615FC0
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7DBB7447
		/// @DnDParent : 6CA56399
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 164B5FF6
		/// @DnDParent : 6CA56399
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF0000FF"
		effect_create_above(5, x + 0, y + 0, 0, $FF0000FF & $ffffff);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 0C54D745
		/// @DnDParent : 6CA56399
		/// @DnDArgument : "soundid" "snd_powerup"
		/// @DnDSaveInfo : "soundid" "snd_powerup"
		audio_play_sound(snd_powerup, 0, 0, 1.0, undefined, 1.0);
	}}