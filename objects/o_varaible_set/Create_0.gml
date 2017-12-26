//it must be done in the separate room from the room where scaling object is placed
globalvar bLeftX, bRightX, bUpY, bDownY;
bLeftX = __view_get( e__VW.XView, 0 );
bRightX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 );
bUpY = __view_get( e__VW.YView, 0 );
bDownY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 );

