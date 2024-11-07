/// @description  AI Movement Logic
// You can write your code in this editor

// Just Run
if justrun=true 
{
    move_towards_point(obj_player.x,obj_player.y,5);
} else {

// Initial Proximity Trigger for Chase
if runaway=false && chase=false && distance_to_object(obj_player) < 200 
{
    chase=true;
    runaway=false;
}

// New Proximity Trigger for Chase (Only one for life of instance)
if chase=true && runaway=false && distance_to_object(obj_player) < 400
{
    move_towards_point(obj_player.x,obj_player.y,5);
}

// If Char is more than 400 pixels away, stop Chase
if chase=true && runaway=false && distance_to_object(obj_player) > 400
{
    move_towards_point(obj_player.x,obj_player.y,0);
}

// Flee in random direction away from Char after Collision Event with Char
if chase=false && runaway=true 
{
    move_towards_point(obj_player.x,obj_player.y,5);
    var _playerdirection = point_direction(x,y,obj_player.x,obj_player.y);
    direction = (_playerdirection + (180 + random(40)) );
}
}

// Stop and Start Animation
if speed = 0 {
    image_speed = 0;
} else {
    image_speed = 2;
}
