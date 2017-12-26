draw_set_halign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(fnt_text_youkilled);
draw_text(340,150, "RANK: " + string(EnemyMax - EnemyKilled));
draw_text(640,150, "KILL: " + string(EnemyKilled)+ " enemy");
draw_text(940,150, "REWARD	: " + string(MoneyReward));