// 

difference(){
    cylinder (h = 3, r = 18, $fn=200);
    translate([0, 0, 1.5])
    cylinder (h = 1.5, r = 14, $fn=200);
}


translate([40, 0, 0])
union(){
    cylinder (h = 3, r = 18, $fn=200);
    translate([0, 0, 3])
    cylinder (h = 1, r = 13.9, $fn=200);
}

