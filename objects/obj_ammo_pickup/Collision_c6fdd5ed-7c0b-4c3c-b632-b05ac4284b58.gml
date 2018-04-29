Aka47Ammo += irandom_range(1,30);
PistoletAmmo += irandom_range(1,10);
SniperAmmo += irandom_range(1,10);
ShotgunAmmo += irandom_range(1,20);
audio_play_sound(snd_pick_up,10,false);
instance_destroy();