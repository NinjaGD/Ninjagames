hp_enemy1 += -ShootDamage;
instance_create_layer(x,y,"Instances_1",obj_blood);
audio_play_sound(snd_enemy_ouch,10,false);

//отталкивание назад
speedenemydefolt =-2;
alarm [0] = 5;