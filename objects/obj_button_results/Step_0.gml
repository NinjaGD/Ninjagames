key_shoot = keyboard_check(vk_enter);

if (key_shoot)
{
	MoneyMax +=MoneyReward;
	room_goto(room_final);
}