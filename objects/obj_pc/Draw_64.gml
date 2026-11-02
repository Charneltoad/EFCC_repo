var _dx = 48;
var _dy = 48;
var _barw = 300;
var _barh = 48;

draw_set_font(Font_basic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _health_barw = _barw * (hp / hp_max);

draw_sprite_stretched(spr_box_true, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box_true_hp, 0, _dx, _dy, _health_barw, _barh, c_white, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh /2, "HP");

var _xp_barw = _barw * (xp/xp_req);
_dy += _barh + 16;

draw_sprite_stretched(spr_box_true, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box_true_xp, 0, _dx, _dy, _xp_barw, _barh, c_white, 0.6);

draw_text(_dx + _barw/2, _dy + _barh/2, $"LEVEL {level}");

var _ammo_barw = _barw * (ammo/ammo_cap);
_dy += _barh + 16;

draw_sprite_stretched(spr_box_true, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box_true_ammo, 0, _dx, _dy, _ammo_barw, _barh, c_white, 0.6);

draw_text(_dx + _barw/2, _dy + _barh/2, $"{ammo}");

draw_set_halign(fa_left);
draw_set_valign(fa_top);