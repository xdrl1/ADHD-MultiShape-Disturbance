intersection(){
    cylinder (h = 3, r = 32, $fn=3);
    cylinder (h = 3, r = 25, $fn=200);
}
translate([0, 0, 3])
intersection(){
    cylinder (h = 1.5, r = 27.7, $fn=3);
    cylinder (h = 1.5, r = 20, $fn=200);
}

translate([50, 0 , 0])
difference(){
    intersection(){
        cylinder (h = 3, r = 32, $fn=3);
        cylinder (h = 3, r = 25, $fn=200);
    }
    translate([0, 0, 1])
    intersection(){
        cylinder (h = 2, r = 28, $fn=3);
        cylinder (h = 2, r = 20.3, $fn=200);
    }
}