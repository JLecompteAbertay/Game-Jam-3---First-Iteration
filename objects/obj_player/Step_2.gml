/// @description Insert description here
// You can write your code in this editor

// Added by Aahaan
// Referencing "Top Down DND & GML Tutorial in Gamemaker #2 Sprites" by Slyddar on Youtube

obj_spellcaster.depth = depth - 1; // Places the spellcaster on top of the player

//Offsets the spellcaster from the player

obj_spellcaster.x = x + lengthdir_x(spellcaster_dis, aim_dir); 
obj_spellcaster.y = y + lengthdir_y(spellcaster_dis, aim_dir);
