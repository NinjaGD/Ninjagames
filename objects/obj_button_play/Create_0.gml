//x = display_get_gui_width()/2
//y = display_get_gui_height()/2

ini_open("battleData.ini");
MoneyMax = ini_read_real("Variables","MoneyMax",0); //The third value here w ill set the score variable if there is no save file
EnemyKilledMax = ini_read_real("Variables","EnemyKilledMax",0); //The third value here w ill set the score variable if there is no save file
ini_close();