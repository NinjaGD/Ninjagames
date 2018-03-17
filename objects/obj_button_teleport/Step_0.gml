var teleport_shoot;
teleport_shoot = keyboard_check(vk_lshift);

if(teleport_shoot)

if cd_somersault <=0
{
	if(teleport_shoot)
	{
		instance_create_layer(obj_player_coordinates.x,obj_player_coordinates.y,"Instances_1",obj_teleport);
		cd_somersault =CdTeleport;
	}
}
cd_somersault += -1;
	

if cd_somersault <=0
{
	image_alpha = 1;
}
else image_alpha = 0.3;