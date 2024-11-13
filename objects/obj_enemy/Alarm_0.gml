/// @description Insert description here
// You can write your code in this editor

// Stops Flee and Continues Chase
chase=true;
runaway=false;
invincible=false


/*
// changes direction of enemy movement every 2 seconds
direction = irandom_range(0,359);
speed = 2
alarm[0] = 60;
*/

//causes enemies to move in a new direction between every 60 and 150 frames
//still has enemies following player, just not continuously, can change back to previous version if needed
//previous is commented out in the step event
var _newdir = point_direction(x, y, obj_player.x, obj_player.y) + irandom_range(-20, 20);
speed = 2;
direction = _newdir;
alarm[0] = irandom_range(60, 150);
