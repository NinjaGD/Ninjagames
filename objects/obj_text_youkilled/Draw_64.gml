if instance_exists(obj_player)
{
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_text_youkilled);
	draw_text(obj_GUI_resolution.wight_resolution*0.5,obj_GUI_resolution.height_resolution-130, "You killed: " + string(EnemyKilled));
}
else instance_destroy();
