random_spawn = choose(1,2,3);

if random_spawn ==1
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_heal_pick_up_25);
}

if random_spawn ==2
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_speed_pick_up);
}

if random_spawn ==3
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_ammo_pickup);
}


instance_destroy();