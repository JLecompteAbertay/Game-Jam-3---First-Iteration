/// @description is game over?

if (!instance_exists(obj_game_over))
{
	// If the hero has run out of hitpoints...
	if (obj_player.player_hp <= 0)
	{
		// Destroy the player.
		with (obj_player) instance_destroy();
	
		// Destroy any bullets.
		//with (obj_hero_bullet) instance_destroy();
	
		// Destroy the enemies.
		with (obj_enemy) instance_destroy();
	
		// Destroy any xp pickups.
		//with (obj_collectable) instance_destroy();
	
		// Destroy any health pickups.
		//with (obj_heart) instance_destroy();
	
		// Pause all game function
		pause();
		
		// Create game over object.
		instance_create_layer(1920 / 2, 1080 / 2 - 150, "UpgradeScreen", obj_game_over);
	}
}
