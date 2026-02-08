
if (point_distance(x, y, targetX, targetY) > 10)
{
    draw_sprite(spr_cross, 0, targetX, targetY);
}

draw_sprite_ext(spr_heroPC, image_index, x, y, 1, 1, image_angle, c_white, 1);
