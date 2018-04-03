//wight_var = WightGlobalVar;
//height_var = HeightGlobalVar;

//key_results = virtual_key_add(wight_var*0.5-128,height_var*0.5-64,256,128,vk_enter);

key_results = keyboard_check(vk_enter);

if (key_results)
{
	MoneyMax +=MoneyReward;
	room_goto(room_final);
}