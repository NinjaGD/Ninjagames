if instance_exists(obj_player)
{
	speed = 0;
	obj_player.x = x;
	obj_player.y = y;
	SpeedPlayer = SpeedPlayerMax;
	obj_player.visible = true;
	instance_destroy();
}
else instance_destroy();