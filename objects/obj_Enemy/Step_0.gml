if (!instance_exists(obj_Player)) {
    return;
}

var dist = point_distance(x, y, obj_Player.x, obj_Player.y);
var dir = point_direction(x, y, obj_Player.x, obj_Player.y);


image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);

if (hp <= 0 && !doOnce) 
{
    alarm[4] = 120;
    instance_destroy();
}

if (global.SELECTED_CLASS == CLASSTYPE.Mage) return;

switch (state)
{
    case ENEMY_STATE.IDLE:
        image_speed = 0;
        image_index = 1;
        if (dist < 150)
        {
            state = ENEMY_STATE.CHASE;
        }
        break;
    
    case ENEMY_STATE.CHASE:
        var moveDir = dir;

        if (dist < safeDistance) {
            moveDir = dir + 180;
        }

        if (dist > attackRange || dist < safeDistance)
        {
            var moveX = lengthdir_x(moveSpeed, moveDir);
            var moveY = lengthdir_y(moveSpeed, moveDir);
            
            if (abs(moveX) < 0.1) moveX = 0;
            if (abs(moveY) < 0.1) moveY = 0;

            move_and_collide(moveX, moveY, obj_wall);
            image_speed = 1;
        }

        if (dist <= attackRange && canShoot)
        {
            state = ENEMY_STATE.ATTACK;
        }

        if (canDash && irandom_range(1, 100) > 80)
        {
            state = ENEMY_STATE.DASH;
        }
        break;
    
    case ENEMY_STATE.ATTACK:
        image_blend = c_orange;
        if (alarm[0] <= 0) alarm[0] = 15;
        image_speed = 0;
        image_index = 1;
        state = ENEMY_STATE.CHASE;
        break;
    
    case ENEMY_STATE.DASH:
        var dashDir = dir + 90 * irandom(1) ? 1 : -1;
        var dashPower = 12;
        image_speed = 1;
        canDash = false;
        alarm[1] = dashCooldown;
        state = ENEMY_STATE.CHASE;
        break;
}
