//var player_death = false;
//player_death = instance_exists(obj_player);
//if(!player_death)
//{
//	instance_destroy();
//}

if HpPlayer <= 0
{
	instance_destroy();
}

//var space_shoot;
//space_shoot = keyboard_check(vk_space);


with (obj_RightStick) var space_shoot = touching;

if Weapons = 0 //кулаки
{
	if(space_shoot)
	{
		if cd_player_shoot <=0
		{
			instance_create_layer(obj_player_coordinates.x,obj_player_coordinates.y,"Instances_1",obj_player_push);
			cd_player_shoot =ShootSpeedPlayer;
		}
		cd_player_shoot -=3;
	}
}

if Weapons = 1 // ака47
{
	if(space_shoot)
	{
		if Aka47Ammo >=1
		{
			if cd_player_shoot <=0
			{
				instance_create_layer(obj_player.x+lengthdir_x(8,obj_player.image_angle),obj_player.y+lengthdir_y(8,obj_player.image_angle),"Instances_1",obj_aka47_bullet);
				cd_player_shoot =Aka47SpeedCd;
				Aka47Ammo += -1;
			}
			cd_player_shoot -=Aka47Speed;
		}
		else Weapons = 0;
	}		
}

if Weapons = 2 // пистолет
{
	if(space_shoot)
	{
		if PistoletAmmo >= 1	
		{
			if cd_player_shoot <=0
			{
				instance_create_layer(obj_player.x+lengthdir_x(8,obj_player.image_angle),obj_player.y+lengthdir_y(8,obj_player.image_angle),"Instances_1",obj_pistolet_bullet);
				cd_player_shoot =PistoletSpeedCd;
				PistoletAmmo -=1;
			}
			cd_player_shoot -=PistoletSpeed;
		}
		else Weapons = 0;
	}
}
	
	
if Weapons = 3 // нож
	{
	if(space_shoot)
		{
		if cd_player_shoot <=0
			{
			instance_create_layer(obj_player_coordinates.x,obj_player_coordinates.y,"Instances_1",obj_knife_damage);
			//obj_player.sprite_index = spr_player_knife_attack;
			cd_player_shoot =KnifeSpeed;
			
			}
			cd_player_shoot -=5;
		}
	}
	
if Weapons = 4 // снайперка
{
	if(space_shoot)
	{
		if SniperAmmo >=1
		{
			if cd_player_shoot <=0
			{
				instance_create_layer(obj_player.x+lengthdir_x(8,obj_player.image_angle),obj_player.y+lengthdir_y(8,obj_player.image_angle),"Instances_1",obj_sniperbullet);
				cd_player_shoot =SniperSpeedCd;
				SniperAmmo -= 1;
			}
			cd_player_shoot -=SniperSpeed;	
		}
		else Weapons = 0;
	}		
}

if Weapons = 5 // дробовик
{
	if(space_shoot)
	{
		if ShotgunAmmo >=1
		{
			if cd_player_shoot <=0
			{
				instance_create_layer(obj_player.x+lengthdir_x(8,obj_player.image_angle),obj_player.y+lengthdir_y(8,obj_player.image_angle),"Instances_1",obj_shotgun_bullet1);
				instance_create_layer(obj_player.x+lengthdir_x(8,obj_player.image_angle),obj_player.y+lengthdir_y(8,obj_player.image_angle),"Instances_1",obj_shotgun_bullet2);
				instance_create_layer(obj_player.x+lengthdir_x(8,obj_player.image_angle),obj_player.y+lengthdir_y(8,obj_player.image_angle),"Instances_1",obj_shotgun_bullet3);
				cd_player_shoot =ShotgunSpeedCd;
				ShotgunAmmo -= 1;
			}
			cd_player_shoot -=ShotgunSpeed;	
		}
		else Weapons = 0;
	}		
}