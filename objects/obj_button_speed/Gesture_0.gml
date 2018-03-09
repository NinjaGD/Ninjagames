if MoneyMax >= BuySpeed
{
	SpeedPlayer +=5;
	BuySpeed += 0.1;
	ini_open("battleData.ini");
	ini_write_real("Variables", "MoneyMax", SpeedPlayer); //The first value is a header for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable
	ini_write_real("Variables", "MoneyMax", BuySpeed); //The first value is a header for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable
	ini_close(); //Remember to close the INI or you'll have a memory leak
}
else instance_create(x,y,obj_text_no_money);