randomize();
random_direction = irandom_range(1,2);

if x<64 {x=64};
if x>3936{x=3936};
if y<64 {y=64};
if y>3936 {y=3936};

sprite_index = spr_red_walk_pistol;

image_angle = point_direction(x,y,obj_player_coordinates.x,obj_player_coordinates.y);

if instance_exists(obj_player)
	{
	if distance_to_object(obj_player) < ShootDistance
		{
		if cd_shoot<=0
			{
			sprite_index = spr_red_pistol_shoot;
			instance_create_layer(x,y,"Instances",obj_enemy_bullet);
			cd_shoot =ShootCooldown;
			}
			cd_shoot -=1;
		}
	}
	

if instance_exists(obj_player)
{
	if point_distance(x, y, obj_player.x, obj_player.y) && distance_to_object(obj_player) < ShootDistance
    {
        mp_potential_step(obj_player.x, obj_player.y, speedenemydefolt, false);
    }		
	else
	{
		if distance_to_object(obj_player) < ShootDistance
		{
			if distance_to_object(obj_player)> 100
			{
					if cd_random_direction <= 0
					{	
						if random_direction = 1
						{
							direction = point_direction(x,y,obj_player_coordinates.x,obj_player_coordinates.y);
							cd_random_direction = CdRandomDirection;
						}
				
						if random_direction = 2
						{
							direction = irandom(360);
							cd_random_direction = CdRandomDirection;
						}
					}
					cd_random_direction += -1;
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

