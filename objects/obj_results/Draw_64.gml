draw_set_halign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(fnt_text_youkilled);
draw_text(wight_var_res*0.25,height_var_res*0.25, "RANK: " + string(EnemyMax - EnemyKilled));
draw_text(wight_var_res*0.75,height_var_res*0.25, "KILL: " + string(EnemyKilled)+ " enemy");
//draw_text(940,150, "REWARD	: " + string(MoneyReward));