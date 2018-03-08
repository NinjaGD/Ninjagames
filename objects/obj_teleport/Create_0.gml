if instance_exists(obj_player) {direction = obj_LeftStick.normaldir;}
image_angle = direction;
speed = SpeedTeleport;
SpeedPlayer = 0;
alarm [0] = 3;
obj_player.visible = false;

