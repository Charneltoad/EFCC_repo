//stats and variables

hp = 10;
hp_max = hp;
movedir = 0;
movespd = 1;
xspd = 0;
yspd = 0;
damage = 1;
magic_damage = 3;
gun_damage = 5;
magic_meter_cap = 10;
magic = 10;
ammo = 10;
level = 1;
xp = 0;
xp_req = 100;

function add_xp(_xp_to_add)
{
	xp += _xp_to_add;
	if (xp >= xp_req)
	{
		level++;
		xp -= xp_req;
		xp_req *= 1.35;
		
		hp_max += 5;
		hp = hp_max;
		damage += 1;
		magic_damage += 2;
		gun_damage += 3;
	}
}
	

tilemap = layer_tilemap_get_id("Tiles_col");
tilemap2 = layer_tilemap_get_id("Tiles_col_invis");