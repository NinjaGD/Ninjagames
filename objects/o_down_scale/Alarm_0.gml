globalvar display_w, display_h, width, height, orientation;

width = 0;
height = 0;

if(os_type==os_windows)
{
  display_w = window_get_width();
  display_h = window_get_height();
}
else
{
  display_w = display_get_width();
  display_h = display_get_height();
}

if(display_w<display_h) //portrait
{
  device_aspect = display_h / display_w;
  logic_aspect = room_height / room_width;
  orientation = 0;
  if(device_aspect>=logic_aspect)
  { 
    height = min(display_h , room_height);
    width = round(height / device_aspect);   
  }
  else
  {
    width = min(display_w , room_width);
    height = round(width * device_aspect);       
  }
}
else //landscape
{
  device_aspect = display_w / display_h;
  logic_aspect = room_width / room_height;
  orientation = 1;
  if(device_aspect>=logic_aspect)
  {
    width = min(display_w , room_width);
    height = round(width / device_aspect);
  }
  else
  { 
    height = min(display_h , room_height);
    width = round(height * device_aspect);
  }
}

__view_set( e__VW.WView, 0, width );
__view_set( e__VW.HView, 0, height );
__view_set( e__VW.WPort, 0, width );
__view_set( e__VW.HPort, 0, height );
__view_set( e__VW.XView, 0, round((room_width - width)/2 ));
__view_set( e__VW.YView, 0, round((room_height - height)/2 ));


surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

var i = true;
var rm = room_next(room);

while (i)
{
  room_set_view(rm, 0, true, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0, 0, -1, -1, -1);
  room_set_view_enabled(rm,true);
  if (rm == room_last)
  {
    i = false;
  }
  else
  {
    rm = room_next(rm);
  }
}

room_goto_next();

