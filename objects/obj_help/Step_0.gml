//Position object procedurally
x = __view_get( e__VW.XView, global.display_view ) + (__view_get( e__VW.WView, global.display_view )*0.5);
y = __view_get( e__VW.YView, global.display_view ) + __view_get( e__VW.HView, global.display_view ) - (sprite_height*2) - 64;

