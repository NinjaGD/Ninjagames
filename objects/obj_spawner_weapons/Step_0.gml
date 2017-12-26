if cd_spawn_weapons <= 0
{
	instance_create(x,y,obj_spanw_weapons);
	cd_spawn_weapons= 1;
}
cd_spawn_weapons -=1;

if WeaponsCount >= WeaponMax
{
	instance_destroy();
}