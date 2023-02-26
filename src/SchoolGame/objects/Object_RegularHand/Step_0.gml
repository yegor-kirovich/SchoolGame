var A = keyboard_check(ord("A"));
var D = keyboard_check(ord("D"));
var W = keyboard_check(ord("W"));
var S = keyboard_check(ord("S"));

var hor = D - A;
var ver = S - W;

if (hor != 0 or ver != 0)
{
    var spd = 4;
    var ang = point_direction(0, 0, hor, ver);
    var xadd = lengthdir_x(spd, ang);
    var yadd = lengthdir_y(spd, ang);
    x = x + xadd;
    y = y + yadd;
}