if cd_spawn_pickup <= 0
{
	instance_create(x,y,obj_spanw_pickup);
	cd_spawn_pickup= 1;
}
cd_spawn_pickup -=1;

if PickUpCount >= PickUpMax
{
	instance_destroy();
}