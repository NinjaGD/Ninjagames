ini_open("battleData.ini");
HPDefolt = ini_read_real("Variables","HPDefolt",HPDefolt); //The third value here w ill set the score variable if there is no save file
BuyHP = ini_read_real("Variables","BuyHP",BuyHPDefolt); //The third value here w ill set the score variable if there is no save file
SpeedPlayer = ini_read_real("Variables","SpeedPlayer",SpeedPlayerDefolt); //The third value here w ill set the score variable if there is no save file
BuySpeed = ini_read_real("Variables","BuySpeed",BuySpeedDefolt); //The third value here w ill set the score variable if there is no save file
ini_close();
room_goto(room_test);