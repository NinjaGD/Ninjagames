if instance_exists(obj_player)
{	
	if instance_exists(obj_RightStick)
	{
		x = obj_player.x;
		y = obj_player.y;
		image_angle = obj_RightStick.normaldir;
		speed = SpeedPlayer;
	}
}