action = function ()
{
	if (obj_battle_player.data.ammo >= 1)
	{
		obj_battle_player.data.ammo -= 1;
		
		obj_battle_manager.player_attack(obj_battle_player.data.gun_damage);
	}
}