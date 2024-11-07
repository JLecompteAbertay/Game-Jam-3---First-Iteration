/// @description Insert description here
// You can write your code in this editor

// Added by Aahaan
// Referencing "Top Down DND & GML Tutorial in Gamemaker #3 Sprites" by Slyddar on Youtube

damage = 5;
range = 160;
owner_id = noone;
knockback_time = 5; 

// What happens when the flame gets destroyed

function flame_die ()
{
 speed = 0;
 
 // For changing to the firball explosion once the sprite is made
instance_change(obj_fireballexplode, false);
 
}
