/// @description flame collision bullet event
// You can write your code in this editor

// Initiates Chase
justrun=true;

// Death or enemy HP loss
if healthenemy <= 0 {
   instance_destroy(self);
   score += 100;
} else 
{
if invincible = false 
{
   healthenemy -= 30;
   invincible=true;
   alarm_set(0,20); // Set step value to length of Attack animation
}
}

// Moves instance away from bullet  (Provides Object Overlap Protection)
var dir;
var move_dis = 32;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
{    
	dir = random(360);
}
// Move in opposite direction of object in collision
else
    dir = point_direction(other.x,other.y,x,y);

// Move to new location but away from char and other enemy

var dx = lengthdir_x(move_dis,dir);
var dy = lengthdir_y(move_dis,dir);

if (!place_meeting(x+dx,y,obj_player)) x += dx;
if (!place_meeting(x,y+dy,obj_player)) y += dy;
if (!place_meeting(x+dx,y,obj_king)) x+=dx;
if (!place_meeting(y,y+dy,obj_king)) y +=dy;