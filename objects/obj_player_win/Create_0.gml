wight_var_win = WightGlobalVarGui;
height_var_win = HeightGlobalVarGui;

instance_deactivate_object(obj_GUI);
object_set_visible( obj_LeftStick, false );
object_set_visible( obj_RightStick, false );
image_alpha = 0;
alarm [0] = 15;