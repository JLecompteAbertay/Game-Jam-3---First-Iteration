/// @description Moves instance away from another enemy (Provides Object Overlap Protection)

var _dir;
var _move_dis = 64;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    _dir = random(360);

// Move in opposite direction of object in collision
else
    _dir = point_direction(other.x, other.y, x, y);

// Move to new location but away from wall and char

var _dx = lengthdir_x(_move_dis, _dir);
var _dy = lengthdir_y(_move_dis, _dir);

//if (!place_meeting(x + _dx, y, object1)) x += _dx; //object1 will be a wall
//if (!place_meeting(x, y + _dy, object1)) y += _dy;
if (!place_meeting(x + _dx, y, obj_player)) x += _dx;
if (!place_meeting(x, y + _dy, obj_player)) y += _dy;
