instance_create_depth(x, y, depth - 1, obj_PlayerBullet, {
    directionVal: point_direction(x, y, mouse_x, mouse_y),
    speedVal: 12,
    damage: 2,
    owner: id,
    target: obj_Enemy
});

alarm[1] = shoot_time;