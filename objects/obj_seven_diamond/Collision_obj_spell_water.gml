/// @description Insert description here
// You can write your code in this editor

if (placeholder_enemy_hp > 0)
{
	//insert projectile sound effect --> audio_play_sound(*sound file*, 0, false);
	
	//destroy other instance (the projectile) --> with (other) instance_destroy();
	
	/*set projectile sprite to hit sprite
	sprite_index = hit_sprite;
	image_index = 0;*/
	
	if (placeholder_enemy_hp <= 0)
	{
		//destroy this enemy instance
		instance_destroy();
	}
}

/*
all the above code was taken from the GameMaker "Survivor Game Template"
I havent checked to see if it works. i only changed the "hitpoints" variable to the
"placeholder_enemy_hp" variable which is stored in "obj_enemy" in case you need to change it
*/