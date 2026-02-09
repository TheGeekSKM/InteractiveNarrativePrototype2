var bullet = instance_create_depth(x, y, depth - 1, obj_EnemyBullet, {
    directionVal: point_direction(x, y, obj_Player.x, obj_Player.y),
    speedVal: 8,
    damage: 1,
    owner: id,
    target: obj_Player
});

canShoot = false;
alarm[2] = shootCooldown;
image_blend = c_white;