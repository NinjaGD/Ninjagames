audio_play_sound(snd_lose,10,false);
instance_deactivate_object(obj_GUI);
object_set_visible( obj_LeftStick, false );
object_set_visible( obj_RightStick, false );
//instance_deactivate_object(obj_LeftStick);
//instance_deactivate_object(obj_RightStick);
image_alpha = 0;
alarm [0] = 60;
