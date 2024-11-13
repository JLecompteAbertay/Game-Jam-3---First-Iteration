/// @description player diamond suit spell pickup

	other.lvl_spell_diamond += 1;
	
	instance_destroy();
	
	effect_create_above(5, x, y, 2, c_yellow); //creates a yellow smoke effect when player collides with obj
	audio_play_sound(snd_pickup_suit_spell, 0, false); // plays sound upon collision with player