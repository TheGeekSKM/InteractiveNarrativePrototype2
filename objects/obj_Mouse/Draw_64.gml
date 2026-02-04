//draw_self();
mouseColor = clicking ? c_gray : c_white;
mouseSize = clicking ? 0.75 : 1;
draw_sprite_ext(spr_mouse230, 0, x, y, mouseSize, mouseSize , image_angle, mouseColor, 1);

