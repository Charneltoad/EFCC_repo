if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
	target_x = obj_pc.x;
	target_y = obj_pc.y;
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, xstart + 100);
}

alarm[0] = 60;