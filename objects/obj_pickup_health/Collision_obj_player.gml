/// @description player health pickup

if (other.player_hp < other.player_max_hp)
{
	other.player_hp += 1;
	
	instance_destroy();
	
	effect_create_above(ef_ring, x, y, 1, #01796f);
	audio_play_sound(snd_hp_up, 0, false);
}