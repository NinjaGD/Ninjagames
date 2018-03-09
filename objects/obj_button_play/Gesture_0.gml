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
EnemyMax = irandom_range(10,20);
if HpPlayer >= 100 {HpPlayer = 100};
room_goto(room0);