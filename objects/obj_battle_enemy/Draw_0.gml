draw_self();

var _x = xstart -40;
var _y = ystart +20;
var _w = 80;
var _h = 16;

draw_sprite_stretched(spr_box_true, 0, _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_box_true_hp, 0, _x, _y, _w * (data.hp / data.hp_max), _h, c_red, 1);