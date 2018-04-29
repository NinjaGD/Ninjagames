//устанавливает глобальную переменную оружия на автомат, создает автомат у игрока и уничтожает себя
Aka47Ammo +=irandom_range(2,10);
Weapons = 1;
audio_play_sound(snd_pick_up,10,false);
instance_destroy();