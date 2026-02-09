x += lengthdir_x(speedVal, directionVal);
y += lengthdir_y(speedVal, directionVal);

var tar = instance_place(x, y, target)
if (instance_exists(tar)) 
{
    tar.hp -= damage;
    echo($"{tar.hp}")
    instance_destroy();
}

if (instance_place(x, y, obj_wall)) 
{
    instance_destroy();
}