if Weapons == 0
{
	draw_set_font(fnt_all);
}

if Weapons == 1
{
	draw_sprite(spr_avtomat,0,640,510);
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_all);
	draw_text(640, 470,"Ammo: " + string(Aka47Ammo));
}

if Weapons == 2
{
	draw_sprite(spr_pistolet,0,640,510);
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_all);
	draw_text(640, 470,"Ammo: " + string(PistoletAmmo));
}

if Weapons == 3
{
	draw_set_font(fnt_all);
	draw_sprite(spr_knife,0,640,510);
}

if Weapons == 4
{
	draw_sprite(spr_sniper,0,640,510);
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_all);
	draw_text(640, 470,"Ammo: " + string(SniperAmmo));
}

if Weapons == 5
{
	draw_sprite(spr_shotgun,0,640,510);
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_all);
	draw_text(640, 470,"Ammo: " + string(ShotgunAmmo));
}

draw_healthbar(480, 550, 800, 580, HpPlayer, c_gray, c_red, $C0C0C0, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));

draw_set_halign(fa_center);
draw_set_halign(fa_middle);
draw_text(640,50, "Enemies: " + string(EnemyCount));
draw_text(640,150, "Weapons: " + string(WeaponsCount));
draw_text(640,100, "PickUps: " + string(PickUpCount));


draw_text(100,250, "auto: " + string(Aka47Ammo));
draw_text(100,275, "pist: " + string(PistoletAmmo));
draw_text(100,300, "snip: " + string(SniperAmmo));
draw_text(100,325, "shot: " + string(ShotgunAmmo));
draw_text(100,350, "HP: " + string(HpPlayer));
draw_text(100,375, "Speed: " + string(SpeedPlayer));
