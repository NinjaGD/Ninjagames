if x<64 {x=64};
if x>3936{x=3936};
if y<64 {y=64};
if y>3936 {y=3936};

sprite_index = spr_enemy_haki_idle;

image_angle = point_direction(x,y,obj_player_coordinates.x,obj_player_coordinates.y);

//для того, чтобы противник вернулся на свое положение после отталкивания
direction = image_angle;
speed  = speedenemydefolt;

if instance_exists(obj_player) && distance_to_object(obj_player) < AttackDistance
{
	if cd_shoot<=0
	{
		sprite_index = spr_enemy_haki_no_walk_shoot;
		instance_create_layer(x,y,"Instances",obj_enemy_bullet);
		cd_shoot =90;
	}
	cd_shoot -=1;
}
	
if hp_enemy1 <= 0 
{
	MoneyReward +=MoneyKill;
	EnemyCount += -1;
	EnemyKilled += 1;
	instance_create(x,y,obj_text_youkilled);
	instance_destroy();
}