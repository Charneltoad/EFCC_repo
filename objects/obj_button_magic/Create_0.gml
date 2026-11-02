action = function ()
{
	if (obj_battle_player.data.magic >= 4)
	{
		obj_battle_player.data.magic -= 4;
		
		obj_battle_manager.player_attack(obj_battle_player.data.magic_damage);
	}
}