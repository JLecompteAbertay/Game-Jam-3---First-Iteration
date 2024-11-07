/// @description keyboard inputs for player movement
// You can write your code in this editor
if (keyboard_check(vk_left))
{
    x = x - 5
}
if (keyboard_check(vk_right))
{
    x = x + 5;
}
if (keyboard_check(vk_up))
{
    y = y - 5;
}
if (keyboard_check(vk_down))
{
    y = y + 5;
}
if (keyboard_check(ord("A")))
{
    x = x - 5;
}
if (keyboard_check(ord("D")))
{
    x = x + 5;
}
if (keyboard_check(ord("W")))
{
    y = y - 5;
}
if (keyboard_check(ord("S")))
{
    y = y + 5;
}