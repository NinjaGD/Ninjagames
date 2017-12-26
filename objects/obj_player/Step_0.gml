if x<64 {x=64};
if x>3936{x=3936};
if y<64 {y=64};
if y>3936 {y=3936};


obj_player.x += obj_LeftStick.normalx * SpeedPlayer;
obj_player.y += obj_LeftStick.normaly * SpeedPlayer;

obj_player.image_angle = obj_RightStick.normaldir;

//перемещение с клавиатуры
if keyboard_check(ord("W")){y-=SpeedPlayer;}
if keyboard_check(ord("A")){x-=SpeedPlayer;} 
if keyboard_check(ord("S")){y+=SpeedPlayer;} 
if keyboard_check(ord("D")){x+=SpeedPlayer;}


with(obj_LeftStick) var walk_on = touching; // для опредения ходьбы
with(obj_LeftStick) var walk_off = !touching; // не ходит
var shoot_on_check = keyboard_check(vk_space); // для определения стрельбы

if Weapons = 0
{
	if(walk_on)
	{
		sprite_index = spr_player_fist_walk;
		if (shoot_on_check)
		{
			sprite_index = spr_player_fist_shoot;
		}
		else sprite_index = spr_player_fist_walk;
			
	}
	else sprite_index = spr_player_fist;
}

if Weapons = 0
{
	if(walk_off)
	{
		if(shoot_on_check)
		{
			sprite_index = spr_player_fist_shoot_no_walk;
		}
		else sprite_index = spr_player_fist;
	}
}

if Weapons = 1
{
	if(walk_on)
	{
		sprite_index = spr_avtomat_walk;
		if (shoot_on_check)
		{
			sprite_index = spr_avtomat_walk_shoot;
		}
		else sprite_index = spr_avtomat_walk;
			
	}
	else sprite_index = spr_avtomat_idle;
}

if Weapons = 1
{
	if(walk_off)
	{
		if(shoot_on_check)
		{
			sprite_index = spr_avtomat_no_walk_shoot;
		}
		else sprite_index = spr_avtomat_idle;
	}
}

if Weapons = 2
{
	if(walk_on)
	{
		sprite_index = spr_pistol_walk_noshoot;
		if (shoot_on_check)
		{
			sprite_index = spr_pistol_shoot_walk;
		}
		else sprite_index = spr_pistol_walk_noshoot;
			
	}
	else sprite_index = spr_pistol_nowalk_noshoot;
}

if Weapons = 2
{
	if(walk_off)
	{
		if(shoot_on_check)
		{
			sprite_index = spr_pistol_shoot_nowalk;
		}
		else sprite_index = spr_pistol_nowalk_noshoot;
	}
}

if Weapons = 3
{
	if(walk_on)
	{
		sprite_index = spr_knife_walk;
		if (shoot_on_check)
		{
			sprite_index = spr_knife_walk_shoot;
		}
		else sprite_index = spr_knife_walk;
			
	}
	else sprite_index = spr_knife_idle;
}

if Weapons = 3
{
	if(walk_off)
	{
		if(shoot_on_check)
		{
			sprite_index = spr_knife_no_walk_shoot;
		}
		else sprite_index = spr_knife_idle;
	}
}

if Weapons = 4
{
	if(walk_on)
	{
		sprite_index = spr_sniper_walk_noshoot;
		if (shoot_on_check)
		{
			sprite_index = spr_sniper_shoot_walk;
		}
		else sprite_index = spr_sniper_walk_noshoot;
			
	}
	else sprite_index = spr_sniper_nowalk_noshoot;
}

if Weapons = 4
{
	if(walk_off)
	{
		if(shoot_on_check)
		{
			sprite_index = spr_sniper_shoot_nowalk;
		}
		else sprite_index = spr_sniper_nowalk_noshoot;
	}
}

if Weapons = 5
{
	if(walk_on)
	{
		sprite_index = spr_shootgun_walk_noshoot;
		if (shoot_on_check)
		{
			sprite_index = spr_shootgun_walk_shoot;
		}
		else sprite_index = spr_shootgun_walk_noshoot;
			
	}
	else sprite_index = spr_shootgun_no_walk_no_shoot;
}

if Weapons = 5
{
	if(walk_off)
	{
		if(shoot_on_check)
		{
			sprite_index = spr_shootgun_shoot_nowalk;
		}
		else sprite_index = spr_shootgun_no_walk_no_shoot;
	}
}


if HpPlayer <= 0
{
	EnemyKilledMax += EnemyKilled;
	instance_create_layer(0,0,"Instances_1", obj_player_death);
	instance_destroy(obj_button_shoot);
	instance_destroy();
}

if EnemyKilled >=EnemyMax
{
	EnemyKilledMax += EnemyKilled;
	instance_create_layer(0,0,"Instances_1", obj_player_win);
}