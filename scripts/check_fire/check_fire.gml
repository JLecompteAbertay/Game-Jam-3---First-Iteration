// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Added by Aahaan
// Referencing "Top Down DND & GML Tutorial in Gamemaker #3 Sprites" by Slyddar on Youtube

// Checks if LMB is being held down and if the spell isn't on cooldown, once fires, it sets a cooldown
function check_fire()
{
   if (mouse_check_button(mb_left))
   {
      if (can_fire)
      {
         can_fire = false;
         alarm[0] = fire_rate;
         
         var _dir = point_direction(x, y, mouse_x, mouse_y);  // Calculate the direction to the mouse

         var var_inst = instance_create_layer(x, y, "Flame", obj_flame); // Creates an instance and spawns a flame

         // Set properties of the newly created flame instance
         with(var_inst)
         {
            var _direction = _dir;  // Pass the direction to a local variable in the instance context
            speed = other.flame_speed;  // 
            direction = _direction;     // Use the local _direction
            image_angle = _direction;   // Set the image angle based on the direction
            owner_id = other;  // 
         }
      }
   }
}