draw_self();

var _x = xstart -20;
var _y = ystart
var _w = 80;
var _h = 16;

draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_boxfill, 0, _x, _y, _w * (data.hp / data.hp_max), _h, c_green, 1);

_y += _h;
_h = 8;

draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_boxfill, 0, _x, _y, _w * data.magic_meter_cap, _h, c_blue, 1);