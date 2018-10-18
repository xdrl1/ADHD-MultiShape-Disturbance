intersection(){
    cylinder (h = 3, r = 20, $fn=5);
    cylinder (h = 3, r = 19, $fn=200);
}
translate([0, 0, 3])
cylinder (h = 1.5, r = 17.31, $fn=5);

translate([40, 0 , 0])
difference(){
    intersection(){
        cylinder (h = 3, r = 20, $fn=5);
        cylinder (h = 3, r = 19, $fn=200);
    }
    translate([0, 0, 1])
    cylinder (h = 2, r = 17.34, $fn=5);
}