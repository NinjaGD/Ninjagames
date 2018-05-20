// загрузка хп и скорости ( решил отказаться от этого функционала )
//ini_open("battleData.ini");
//HPDefolt = ini_read_real("Variables","HPDefolt",HPDefolt); //The third value here w ill set the score variable if there is no save file
//BuyHP = ini_read_real("Variables","BuyHP",BuyHPDefolt); //The third value here w ill set the score variable if there is no save file
//SpeedPlayer = ini_read_real("Variables","SpeedPlayer",SpeedPlayerDefolt); //The third value here w ill set the score variable if there is no save file
//BuySpeed = ini_read_real("Variables","BuySpeed",BuySpeedDefolt); //The third value here w ill set the score variable if there is no save file
//ini_close();
if !object_get_visible(obj_LeftStick) object_set_visible(obj_LeftStick, true);
if !object_get_visible(obj_RightStick) object_set_visible(obj_RightStick, true);
EnemyCount = 0;
EnemyMax = EnemyMaxDefolt;
WeaponsCount = 0;
PickUpCount = 0;
if HpPlayer >= 100 {HpPlayer = 100};
image_xscale = 0.8;
image_yscale = image_xscale;
audio_play_sound(snd_play,10,false);
audio_stop_sound(snd_soundtrack);
alarm [0] = 5;