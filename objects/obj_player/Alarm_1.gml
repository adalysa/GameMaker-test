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

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0F1F8356
/// @DnDArgument : "soundid" "snd_music_rampage"
/// @DnDSaveInfo : "soundid" "snd_music_rampage"
var l0F1F8356_0 = snd_music_rampage;if (audio_is_playing(l0F1F8356_0)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 54D1D0DD
	/// @DnDParent : 0F1F8356
	/// @DnDArgument : "soundid" "snd_music_rampage"
	/// @DnDSaveInfo : "soundid" "snd_music_rampage"
	audio_stop_sound(snd_music_rampage);}

/// @DnDAction : YoYo Games.Audio.If_Audio_Paused
/// @DnDVersion : 1
/// @DnDHash : 4CD3DC9D
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDSaveInfo : "soundid" "snd_music_game"
var l4CD3DC9D_0 = snd_music_game;if (audio_is_paused(l4CD3DC9D_0)){	/// @DnDAction : YoYo Games.Audio.Resume_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 040EFB5B
	/// @DnDParent : 4CD3DC9D
	/// @DnDArgument : "sound" "snd_music_game"
	/// @DnDSaveInfo : "sound" "snd_music_game"
	audio_resume_sound(snd_music_game);}