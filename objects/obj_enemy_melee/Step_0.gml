if x<64 {x=64};
if x>3936{x=3936};
if y<64 {y=64};
if y>3936 {y=3936};

sprite_index = spr_gopnik_knife_walk;

image_angle = point_direction(x,y,obj_player_coordinates.x,obj_player_coordinates.y);

if instance_exists(obj_player) && distance_to_object(obj_player) < AttackDistance
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = speedenemydefolt;
}
	
if instance_exists(obj_player)
{	
	if place_meeting(x,y,obj_stone)	
	{
		if x<obj_player.x 
		{
			if y<obj_player.y 
			{
				direction = 90;
				speed = SpeedEnemy;
			}
		}

		if x<obj_player.x 
		{
			if y>obj_player.y 
			{
				direction = 270;
				speed = SpeedEnemy;
			}
		}


		if x>obj_player.x 
		{
			if y>obj_player.y 
			{
				direction = 270;
				speed = SpeedEnemy;
			}
		}

		if x>obj_player.x 
		{
			if y<obj_player.y 
			{
				direction = 90;
				speed = SpeedEnemy;
			}
		}
	}	
}
	
	
if hp_enemy1 <= 0 
{
	MoneyReward +=MoneyKill;
	EnemyCount += -1;
	EnemyKilled += 1;
	instance_create(x,y,obj_text_youkilled);
	instance_destroy();
}