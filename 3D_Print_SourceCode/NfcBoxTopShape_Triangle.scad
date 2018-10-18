translate([- 49.9 / 2, - 9.9 / 2, 2])
union(){
    cube([49.9, 0.9, 3]);
    cube([0.9, 9.9, 3]);
    translate([0, 9, 0])
    cube([49.9, 0.9, 3]);
    translate([49, 0, 0])
    cube([0.9, 9.9, 3]);
}

translate([-5, 0, 0])
intersection(){   
    difference(){
        cylinder(h = 2, d = 90, $fn=3, center = false);
        translate([- 49.9 / 2 + 0.9 + 5, - 9.9 / 2 + 0.9, 0])
        cube([49.9 - 2 * 0.9, 9.9 - 2 * 0.9, 2], false);
    }
    cylinder(h = 2, d = 75, $fn=100, center = false);
}
