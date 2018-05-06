if cd_collision<=0
{
	HpPlayer +=-1;
	cd_collision =CollisionCooldown;
	if cd_snd_player_ouch <=0
	{
		audio_play_sound(snd_player_ouch,10,false);
		cd_snd_player_ouch = 5;
	}
	cd_snd_player_ouch += -1;
}
cd_collision +=-1;