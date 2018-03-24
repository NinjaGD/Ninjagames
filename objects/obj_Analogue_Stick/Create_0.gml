/// @description Custom Config
deadzone = 0.1;
display_set_gui_size(640, 480); 


//Do not edit below
//Ivars
image_speed = 0;
radius = sprite_width * 0.5;
joyx = 0;
joyy = 0;
normalx = 0;
normaly = 0;
normaldir = 0;
touching = false;
touchid = -1;

//мой код для позиционирования стиков в зависимости от соотношения глобальной ширины и высоты
	
obj_LeftStick.x = 130;
obj_LeftStick.y = HeightGlobalVar-100;
obj_RightStick.x = WightGlobalVar-130;
obj_RightStick.y = HeightGlobalVar-100;


