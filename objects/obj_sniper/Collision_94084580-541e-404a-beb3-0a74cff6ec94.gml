//устанавливает глобальную переменную оружия на снайперка, создает снайпер у игрока и уничтожает себя
SniperAmmo +=irandom_range(2,10);
Weapons = 4;
audio_play_sound(snd_pick_up,10,false);
instance_destroy();