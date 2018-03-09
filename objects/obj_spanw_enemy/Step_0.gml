random_spawn = choose(1,2,3,4);

var point_x = random_range(300,1900);
var point_y = random_range(300,1900);

if random_spawn ==1
{
	if !collision_point(point_x, point_y, obj_stone, true, false)
	{
		instance_create_layer(point_x,point_y,"Instances_0",obj_enemy1);
	}
	else randomize();
}

if random_spawn ==2
{
	if !collision_point(point_x, point_y, obj_stone, true, false)
	{
		instance_create_layer(point_x,point_y,"Instances_0",obj_enemy_melle_c);
	}
	else randomize();
}

if random_spawn ==3
{
	if !collision_point(point_x, point_y, obj_stone, true, false)
	{
		instance_create_layer(point_x,point_y,"Instances_0",obj_enemy_shoot_c);
	}
	else randomize();
}

if random_spawn ==4
{
	if !collision_point(point_x, point_y, obj_stone, true, false)
	{
		instance_create_layer(point_x,point_y,"Instances_0",obj_enemy_random_c);
	}
	else randomize();
}

instance_destroy();

