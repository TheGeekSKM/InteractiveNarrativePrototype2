var centerX = window_get_width() / 2;
var centerY = window_get_height() / 2;

var mouseOffsetX = mouse_x - centerX;
var mouseOffsetY = mouse_y - centerY;

var targetX = mouseOffsetX * sensitivity * -1;
var targetY = mouseOffsetY * sensitivity * -1;

targetX = clamp(targetX, -maxRange, maxRange);
targetY = clamp(targetY, -maxRange, maxRange);

x = lerp(x, anchorX + targetX, 0.1);
y = lerp(y, anchorY + targetY, 0.1);