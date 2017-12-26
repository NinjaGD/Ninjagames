if cd_spawn_enemy <= 0
{
	instance_create(x,y,obj_spanw_enemy);
	cd_spawn_enemy= 3;
}
cd_spawn_enemy -=1;

if EnemyCount >= EnemyMax
{
	instance_destroy();
}