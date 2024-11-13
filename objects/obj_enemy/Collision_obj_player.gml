/// @description Sets variables to initiate Flee and an Alarm to begin Chase again

chase=false;
runaway=true;
justrun=false;
alarm_set(0,40);

// Removes one health point after collision of enemy and player objects
health -= 1;
if health < 1 
{
   room_restart();
}

// Moves instance away from char (Provides Object Overlap Protection)
var _dir;
var _move_dis = 32;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    _dir = irandom_range(0, 359);

// Move in opposite direction of object in collision
else
    _dir = point_direction(other.x, other.y, x, y);

// Move to new location but away from wall and other enemy

var _dx = lengthdir_x(_move_dis, _dir);
var _dy = lengthdir_y(_move_dis, _dir);

// if (!place_meeting(x+dx,y,object1)) x += dx; //object1 will be a wall
// if (!place_meeting(x,y+dy,object1)) y += dy;
if (!place_meeting(x + _dx, y, obj_king_club)) x += _dx;
if (!place_meeting(y, y + _dy, obj_king_club)) y += _dy;
