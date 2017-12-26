if cd_heal = 0
{
	HpPlayer += +5;
	cd_heal = 90;
	heal_max += 5;
}
cd_heal += -HealCd;

if heal_max >= 25 
{
instance_destroy();
}
