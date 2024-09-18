/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44CAC0B4
/// @DnDArgument : "var" "star_powerup_active"
/// @DnDArgument : "value" "true"
if(star_powerup_active == true){	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 7F26F814
	/// @DnDApplyTo : other
	/// @DnDParent : 44CAC0B4
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4DAD53E7
		/// @DnDParent : 7F26F814
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "sword"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_sword_attack"
		/// @DnDSaveInfo : "objectid" "obj_sword_attack"
		var sword = instance_create_layer(x + 0, y + 0, "Instances", obj_sword_attack);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1170779C
		/// @DnDParent : 7F26F814
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "sword.visible"
		sword.visible = false;
	}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1997C6E5
	/// @DnDParent : 44CAC0B4
	exit;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1362B03B
/// @DnDComment : If Alarm 0 is deactivated
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "1"
if(alarm[0] < 0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1003E78C
	/// @DnDComment : Set the color to red to show the player$(13_10)has lost
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 764ECBC6
	/// @DnDComment : Play "hurt" sound
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "soundid" "snd_hurt"
	/// @DnDSaveInfo : "soundid" "snd_hurt"
	audio_play_sound(snd_hurt, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5641C2B6
	/// @DnDComment : Tell the Alarm 0 event to run after 20 frames$(13_10)$(13_10)After 20 frames that event will restart the level
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "steps" "20"
	alarm_set(0, 20);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1D44F6F1
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "x" "other.x"
	/// @DnDArgument : "y" "other.y"
	direction = point_direction(x, y, other.x, other.y);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 0E3ECBE6
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "direction" "180"
	/// @DnDArgument : "direction_relative" "1"
	direction += 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1F059275
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "speed" "12"
	speed = 12;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65135439
	/// @DnDParent : 1362B03B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += -1;}