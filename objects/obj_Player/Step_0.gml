var _h_input = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _v_input = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

var _input_mag = point_distance(0, 0, _h_input, _v_input);
if (_input_mag > 0)
{
    _h_input /= _input_mag;
    _v_input /= _input_mag;
}

var _dash_pressed = keyboard_check_pressed(vk_lshift);
if (_dash_pressed && can_dash)
{
    var _dash_power = 15;
    
    var _dash_dir = (_input_mag > 0) ? point_direction(0, 0, _h_input, _v_input) : image_angle;
    
    dash_h = lengthdir_x(_dash_power, _dash_dir);
    dash_v = lengthdir_y(_dash_power, _dash_dir);
    
    can_dash = false;
    alarm[0] = dash_cooldown_time;
}


var _current_dash_speed = point_distance(0, 0, dash_h, dash_v);

if (_current_dash_speed > dash_invincibility_threshold) 
{
    is_invincible = true;
} 
else 
{
    is_invincible = false;
}

if (is_invincible) 
{
    var _ghost = instance_create_depth(x, y, depth + 1, obj_ghost);
    _ghost.sprite_index = sprite_index;
    _ghost.image_index = image_index;
    _ghost.image_angle = image_angle;
    _ghost.image_alpha = 0.75;
}

var _final_h = (_h_input * move_speed) + dash_h + recoil_h;
var _final_v = (_v_input * move_speed) + dash_v + recoil_v;

move_and_collide(_final_h, _final_v, obj_wall);

dash_h = lerp(dash_h, 0, dash_decay);
dash_v = lerp(dash_v, 0, dash_decay);
recoil_h = lerp(recoil_h, 0, recoil_decay);
recoil_v = lerp(recoil_v, 0, recoil_decay);

image_angle = point_direction(x, y, mouse_x, mouse_y);