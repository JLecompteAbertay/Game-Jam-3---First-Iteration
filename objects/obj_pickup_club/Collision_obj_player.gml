/// @description player club suit spell pickup

	other.lvl_spell_club += 1;
	
	instance_destroy();
	
	effect_create_above(5, x, y, 2, c_green); //creates a green smoke effect when player collides with obj
	audio_play_sound(snd_pickup_suit_spell, 0, false); // plays sound upon collision with player