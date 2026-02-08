if (mouse_check_button(mb_left))
{
    targetX = mouse_x;
    targetY = mouse_y;
    isMoving = true;
    image_speed = 1;

    image_angle = point_direction(x, y, targetX, targetY);
}

if (isMoving)
{
    var dist = point_distance(x, y, targetX, targetY);

    if (dist > moveSpeed)
    {
        var dir = point_direction(x, y, targetX, targetY);
        x += lengthdir_x(moveSpeed, dir);
        y += lengthdir_y(moveSpeed, dir);
    }
    else
    {
        x = targetX;
        y = targetY;
        isMoving = false;
        image_speed = 0;
        image_index = 1;
    }

}