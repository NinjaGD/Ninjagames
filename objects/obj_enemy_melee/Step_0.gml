if x<64 {x=64};
if x>3936{x=3936};
if y<64 {y=64};
if y>3936 {y=3936};

sprite_index = spr_gopnik_knife_walk;

image_angle = point_direction(x,y,obj_player_coordinates.x,obj_player_coordinates.y);

//if instance_exists(obj_player) && distance_to_object(obj_player) < AttackDistance
//{
//	direction = point_direction(x,y,obj_player.x,obj_player.y);
//	speed = speedenemydefolt;
//}
	
if instance_exists(obj_player) && distance_to_object(obj_player) < AttackDistance
{
	mp_potential_step(obj_player.x, obj_player.y, speedenemydefolt, false);
	if cd_enemy_walk <=0
	{
		audio_play_sound(snd_enemy_walk,10,false);
		cd_enemy_walk = 15;
	}
	cd_enemy_walk += -1;
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