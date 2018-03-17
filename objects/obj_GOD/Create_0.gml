// различные настройки
randomize();

//характеристики игрока глобальные переменные
globalvar HpPlayer, ArmorPlayer, SpeedPlayer, SpeedPlayerMin, SpeedPlayerMax, HPDefolt, SpeedPlayerDefolt;
globalvar SpeedPlayerSlow, SpeedPlayerFast, SpeedTeleport, CdTeleport;

HPDefolt = 30; //здоровье игрока по умолчанию, которое будет меняться по мере его увеличения за награду
HpPlayer = HPDefolt ; // здоровье - для расчета в бою
ArmorPlayer = 0; // броня
SpeedPlayerDefolt = 4; // дефолтная скорость, не подвергается изменениям
SpeedPlayer = 4; // скорость передвижения
SpeedPlayerMin = 0; // скорость передвижения игрока- минимальная ( для столкновений )
SpeedPlayerMax = SpeedPlayer; // скорость передвижения игрока- максимальная ( для столкновений )
SpeedPlayerSlow = 2; // скорость передвижения игрока- замедление ( для столкновений )
SpeedPlayerFast = 5; // скорость передвижения игрока- ускорение ( для столкновений )
SpeedTeleport = 30; // скорость выcтрела объектом для телепорта
CdTeleport = 30; // время для возможности нажатия кнопки телепорт

//характеристики оружия глобальные переменные
globalvar ShootDamage, SpeedPlayerBullet, ShootSpeedPlayer, ShootScatterPlayer, ShootAmmo, ShootDistance;
globalvar WeaponsCount, WeaponMax;

ShootDamage = 30; //урон от выстрела игрока
ShootSpeedPlayer = 15; // скорость стрельбы ( чем меньше - тем быстрее )
ShootScatterPlayer = irandom_range(-20,20); // разброс стрельбы игрока
ShootAmmo = 0; // количество патронов
SpeedPlayerBullet = 10; // (в данный момент не актуально ) скорость полета пули 
PushDamage = 30; // урон от удара игрока
PushSpeed = 15; // скорость удара игрока
WeaponsCount = 0; //единица оружия на карте
WeaponMax = 30; //максимально возможно количество единиц оружия на карте

globalvar PushDamage, PushSpeed;
// Характеристики кулака -  оружие 0

globalvar Aka47Ammo, Aka47SpeedCd, Aka47Speed, Aka47BulletSpeed, Aka47Damage,Aka47AmmoDefolt;
// Характеристики калаша -  оружие 1
Aka47Speed = 5; // скорость стрельбы из ака47
Aka47SpeedCd = 15; // кулдаун между выстрелами
Aka47Ammo = 30; // количество патронов в ака47
Aka47AmmoDefolt = 30; // количество патронов в ака47 по умолчанию
Aka47BulletSpeed = 20; // скорость полета пули из ака
Aka47Damage = 30; // урон с ака47

globalvar PistoletSpeed, PistoletSpeedCd, PistoletAmmo, PistoletBulletSpeed, PistoletDamage, PistoletAmmoDefolt;
// Характеристики пистолета - оружие 2
PistoletSpeed = 1; // скорость стрельбы из пистолета
PistoletSpeedCd = 15; // кулдаун между выстрелами
PistoletAmmo = 15; // количество патронов в пистолета
PistoletAmmoDefolt = 15; // количество патронов в пистолета по умолчанию
PistoletBulletSpeed = 20; // скорость полета пули из ака
PistoletDamage = 30; // урон с ака47

// характеристики ножа - оружие 3
globalvar KnifeDamage, KnifeSpeed, KnifeDamage;
KnifeDamage = 5; // урон от ножа
KnifeSpeed = 5; // скорость удара ножом
KnifeDamage = 30; // урон с ножа

globalvar SniperAmmo, SniperSpeedCd, SniperSpeed, SniperBulletSpeed, SniperDamage, SniperAmmoDefolt;
// Характеристики снайперки -  оружие 4
SniperSpeed = 1; // скорость стрельбы из снайперки
SniperSpeedCd = 30; // кулдаун между выстрелами
SniperAmmo = 30; // количество патронов в снайперки
SniperAmmoDefolt = 30; // количество патронов в снайперки по умолчанию
SniperBulletSpeed = 20; // скорость полета пули из снайперки
SniperDamage = 30 // скорость урона из снайперки

globalvar ShotgunAmmo, ShotgunSpeedCd, ShotgunSpeed, ShotgunBulletSpeed, ShotgunDamage, ShotgunAmmoDefolt;
// Характеристики дробовика -  оружие 5
ShotgunSpeed = 1; // скорость стрельбы из дробовика
ShotgunSpeedCd = 20; // кулдаун между выстрелами
ShotgunAmmo = 30; // количество патронов в дробовика
ShotgunAmmoDefolt = 30; // количество патронов в дробовика по умолчанию
ShotgunBulletSpeed = 20; // скорость полета пули из дробовика
ShotgunDamage = 30 // скорость урона из дробовика

// характеристики врагов obj_enemy
globalvar HpEnemy, SpeedEnemy, ShootCooldown, CollisionCooldown, DamageBullet, SpeedEnemyMin, SpeedEnemyMax;
globalvar CdRandomDirection, AttackDistance,CollisionDamage, EnemyCount, EnemyKilled, CollisionSpeed, EnemyMax;
globalvar MoneyKill, SpeedEnemyBullet, MeleeDistance, SpeedEnemySlow, SpeedEnemyFast;

EnemyCount = 0;
EnemyKilled = 0;
EnemyMax = irandom_range(10,20);
HpEnemy = 100;
SpeedEnemy = 2;
SpeedEnemyMin = 0;
SpeedEnemyMax = 2;
SpeedEnemySlow = 1;
SpeedEnemyFast = 3;
ShootCooldown = 90;
CollisionCooldown = 30;
CollisionDamage = 3;
CollisionSpeed = 5; 
DamageBullet = 20;
SpeedEnemyBullet = 5;
CdRandomDirection = 90;
AttackDistance = 750;
ShootDistance = 500; // дистанция до выстрела
MeleeDistance = 100; // дистанция с которой перс пойдет в ближний бой
MoneyKill = irandom_range(30,50); //деньги за убийство моба


// характеристики пик-аппов ( лечилки, патроны и т.д. )
globalvar PickUpCount, PickUpMax;
PickUpCount = 0;
PickUpMax = 20;

// смена оружия
globalvar Weapons;
Weapons = 1;

// разные предметы
globalvar HealCd;
HealCd = 5;  // скорость хила ( чем больше, тем быстрее )

// устанавливаем размер и стиль текста по умолчанию
draw_set_font(fnt_all);

// стата
globalvar EnemyKilledMax,WinMax, MoneyReward, MoneyMax;
WinMax = 0; //максимальное количество побед за все игры
MoneyReward = 0; //деньги игрока
//MoneyMax, EnemyKilledMax - специально не заданы, чтобы загружать их значения из ини файла

//цена повышения хп и скорости
globalvar BuyHP, BuySpeed,BuyCoef, BuyHPDefolt, BuySpeedDefolt;
BuyHP = 10;
BuySpeed = 10;
BuyCoef = 2;
BuyHPDefolt = 10;
BuySpeedDefolt = 10;
