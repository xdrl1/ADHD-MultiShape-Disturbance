translate([- 9.9 / 2, - 49.9 / 2, 2])
union(){
    cube([0.9, 49.9, 3]);
    cube([9.9, 0.9, 3]);
    translate([9, 0, 0])
    cube([0.9, 49.9, 3]);
    translate([0, 49, 0])
    cube([9.9, 0.9, 3]);
}
difference(){
    cylinder(h = 2, d = 70, $fn=100, center = false);
    translate([- 9.9 / 2 + 0.9, - 49.9 / 2 + 0.9, 0])
    cube([9.9 - 2 * 0.9, 49.9 - 2 * 0.9, 2], false);
}