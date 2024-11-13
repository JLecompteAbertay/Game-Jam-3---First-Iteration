// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement()
{

	// stores player movement variables
	move_speed = 100;
	move_x = 0;
	move_y = 0;

	// keyboard inputs for player movement
	if (keyboard_check(vk_left))
	{
		x = x - 5
	}
	if (keyboard_check(vk_right))
	{
		x = x + 5;
	}
	if (keyboard_check(vk_up))
	{
		y = y - 5;
	}
	if (keyboard_check(vk_down))
	{
		y = y + 5;
	}
	if (keyboard_check(ord("A")))
	{
		x = x - 5;
	}
	if (keyboard_check(ord("D")))
	{
		x = x + 5;
	}
	if (keyboard_check(ord("W")))
	{
		y = y - 5;
	}
	if (keyboard_check(ord("S")))
	{
		y = y + 5;
	}

}