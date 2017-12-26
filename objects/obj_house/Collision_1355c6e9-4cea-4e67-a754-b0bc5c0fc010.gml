// код для того, чтобы при коллизии игрока с домом, заменялся спрайт дома
//var player_colli = !instance_place(x, y, obj_player);
//if ((player_colli > 0))
//{
//	sprite_index = spr_house_roof;
//}
//else sprite_index = spr_house;

var player_speed = instance_place(x, y, obj_player);
if ((player_speed > 0))
{
	SpeedPlayer = SpeedPlayerMin;
}

SpeedPlayer = SpeedPlayerMax;