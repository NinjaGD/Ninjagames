if cd_collision<=0
	{
	HpPlayer +=-1;
	cd_collision =CollisionCooldown;
	sprite_index = spr_gopnik_knife_walk_shoot;
	audio_play_sound(snd_knifeshot,10,false);
	}
	cd_collision +=-1;