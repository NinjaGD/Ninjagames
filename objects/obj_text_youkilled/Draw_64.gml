if instance_exists(obj_player)
{
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_text_youkilled);
	draw_text(WightGlobalVar*0.5,HeightGlobalVar-130, "You killed: " + string(EnemyKilled));
}
else instance_destroy();