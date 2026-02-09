moveSpeed = 2.5;
hp = 50;

enum ENEMY_STATE {
    IDLE,
    CHASE,
    ATTACK,
    DASH
}
state = ENEMY_STATE.IDLE;

canShoot = true;
shootCooldown = 60;
dashCooldown = 120;
canDash = true;

attackRange = 90;
safeDistance = 64;

image_index = 1;
image_speed = 0;

doOnce = false;
doOnce2 = false;

isDead = false;
