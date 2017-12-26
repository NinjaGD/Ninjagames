ini_open("battleData.ini");
ini_write_real("Variables", "MoneyMax", MoneyMax); //The first value is a header for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable
ini_write_real("Variables", "EnemyKilledMax", EnemyKilledMax); //The first value is a header for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable
ini_close(); //Remember to close the INI or you'll have a memory leak