//устанавливает глобальную переменную оружия на автомат, создает автомат у игрока и уничтожает себя
ShotgunAmmo +=irandom_range(2,10);
Weapons = 5;
audio_play_sound(snd_pick_up,10,false);
instance_destroy();