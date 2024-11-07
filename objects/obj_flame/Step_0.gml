/// @description Insert description here
// You can write your code in this editor

// Added by Aahaan
// Referencing "Top Down DND & GML Tutorial in Gamemaker #3 Sprites" by Slyddar on Youtube

var _dis = point_distance(xstart, ystart, x, y) // Calculates how far the arrow has travelled

if _dis > range 
{
	flame_die();
}

