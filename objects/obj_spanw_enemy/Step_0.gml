random_spawn = choose(1,2,3,4);

if random_spawn ==1
{
	randomize();
	instance_create_layer(random_range(300,1900),random_range(300,1900),"Instances_0",obj_enemy1);
}

if random_spawn ==2
{
	randomize();
	instance_create_layer(random_range(300,1900),random_range(300,1900),"Instances_0",obj_enemy_melle_c);
}

if random_spawn ==3
{
	randomize();
	instance_create_layer(random_range(300,1900),random_range(300,1900),"Instances_0",obj_enemy_shoot_c);
}

if random_spawn ==4
{
	randomize();
	instance_create_layer(random_range(300,1900),random_range(300,1900),"Instances_0",obj_enemy_random_c);
}

instance_destroy();