var eyeX = x; 
var eyeY = y;
var maxDist = 16; 

var dir = point_direction(eyeX, eyeY, obj_PCPlayer.x, obj_PCPlayer.y);
var dist = point_distance(eyeX, eyeY, obj_PCPlayer.x, obj_PCPlayer.y);


var clampedDist = min(dist, maxDist);

eyePosX = eyeX + lengthdir_x(clampedDist, dir);
eyePosY = eyeY + lengthdir_y(clampedDist, dir);