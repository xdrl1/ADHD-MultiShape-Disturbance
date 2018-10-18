thick = 2;

union(){
    difference(){    
        union(){
            translate([5, 5, 0])
            cylinder (h = thick, r = 5, $fn=200);
            translate([5, 55, 0])
            cylinder (h = thick, r = 5, $fn=200);
            translate([55, 5, 0])
            cylinder (h = thick, r = 5, $fn=200);
            translate([55, 55, 0])
            cylinder (h = thick, r = 5, $fn=200);
            translate([5, 0, 0])
            cube([50, 60, thick]);
            translate([0, 5, 0])
            cube([60, 50, thick]);
        }
        translate([
            (60 - (10 - 2)) / 2, 
            (60 - (50 - 2)) / 2,
            0
        ])
        cube([10 - 2, 50 - 2, thick], false);
    }
    translate([
        (60 - (10 - 2)) / 2 - 0.95, 
        (60 - (50 - 2)) / 2 - 0.95,
        thick
    ])
    union(){
        cube([0.95, 50 - 2 + 2 * 0.95, 3], false);
        cube([10 - 2 + 2 * 0.95, 0.95, 3], false);
    }
    translate([
        (60 - (10 - 2)) / 2 - 0.95, 
        (60 - (50 - 2)) / 2 + 50 - 2,
        thick
    ])
    cube([10 - 2 + 2 * 0.95, 0.95, 3], false);
    translate([
        (60 - (10 - 2)) / 2 + 10 - 2, 
        (60 - (50 - 2)) / 2 - 0.95,
        thick
    ])
    cube([0.95, 50 - 2 + 2 * 0.95, 3], false);
}



