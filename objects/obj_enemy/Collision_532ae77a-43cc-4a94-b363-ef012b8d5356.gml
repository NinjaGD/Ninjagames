if cd_collision<=0
{
	HpPlayer +=-CollisionDamage;
	cd_collision =CollisionCooldown;
	sprite_index = spr_gopnik_knife_walk_shoot;
	audio_play_sound(snd_knifeshot,10,false);
	if cd_snd_player_ouch <=0
	{
		audio_play_sound(snd_player_ouch,10,false);
		cd_snd_player_ouch = 5;
	}
	cd_snd_player_ouch += -1;
}
cd_collision +=-CollisionSpeed;