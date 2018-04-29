if x<64 {x=64};
if x>3936{x=3936};
if y<64 {y=64};
if y>3936 {y=3936};

sprite_index = spr_gopnik_avtomat_idle;

image_angle = point_direction(x,y,obj_player_coordinates.x,obj_player_coordinates.y);

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < AttackDistance
	{
		if distance_to_object(obj_player) < ShootDistance && distance_to_object(obj_player) > MeleeDistance
		{
			if cd_shoot<=0
			{
				sprite_index = spr_gopnik_avtomat_shoot;
				instance_create_layer(x,y,"Instances",obj_enemy_bullet);
				cd_shoot =ShootCooldown;
			}
			cd_shoot -=1;
		}
		else if distance_to_object(obj_player) < MeleeDistance
		{
			mp_potential_step(obj_player.x, obj_player.y, speedenemydefolt, false);
			sprite_index = spr_gopnik_knife_walk;
			audio_play_sound(snd_walk,10,false);
		}
	}
}

	
if hp_enemy1 <= 0 
{
	MoneyReward +=MoneyKill;
	EnemyCount += -1;
	EnemyKilled += 1;
	instance_create(x,y,obj_text_youkilled);
	instance_create(x,y,obj_enemy_death);
	instance_destroy();
}