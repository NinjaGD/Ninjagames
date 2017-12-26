random_spawn = choose(1,2,3,4,5);

if random_spawn ==1
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_avtomat);
}

if random_spawn ==2
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_pistolet);
}

if random_spawn ==3
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_knife);
}

if random_spawn ==4
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_sniper);
}

if random_spawn ==5
{
	randomize();
	instance_create_layer(random_range(100,3900),random_range(100,3900),"Instances_0",obj_shotgun);
}

instance_destroy();