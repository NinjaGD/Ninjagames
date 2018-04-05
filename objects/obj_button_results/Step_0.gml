
key_results = keyboard_check(vk_enter);

if (key_results)
{
	MoneyMax +=MoneyReward;
	room_goto(room_final);
}