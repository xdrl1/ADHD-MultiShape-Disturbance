readerLen = 129;
readerWdh = 80;
readerHgt = 15.6;
fillet = 3;

shifting = 25;
baffle = 35;

module prism(l, w, h, t){
   polyhedron(
       points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,t,h], [l,t,h]],
       faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
   );
}

module prism1(l, w, h){
   polyhedron(
       points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
       faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
   );
}

factor = 40;

difference(){
    union(){
        difference(){
            union(){
                difference(){
                    union(){
                        difference(){
                            difference(){
                                rotate([atan(factor/140) + 90, 0, 90]) {
                                    minkowski(){
                                        prism(readerLen + 2 * fillet, 140, 140, factor);
                                        sphere(fillet, $fn=100); 
                                    }
                                }
                                translate([-fillet, fillet, 10])
                                cube([200, readerLen, 200]);
                                translate([3, 10, 0])
                                cube([120 + 15, readerLen - 13, 10]);
                            }
                            //wdh = 131 - 3 = 128
                            translate([shifting, (readerLen + 2 * fillet - 50) / 2, -fillet])
                            cube([50, 50, 3]);
                            translate([150 - (140 + 2 * fillet - shifting - 50) / 2, (readerLen + 2 * fillet) / 2, -fillet])
                            cylinder(h=fillet, r=10, $fn=4, center=false);
                        }
                        translate([shifting - fillet, (readerLen + 2 * fillet - 50) / 2, 0])
                        cube([fillet, 50, 10]);
                        translate([shifting - fillet, (readerLen + 2 * fillet - 50) / 2 - fillet, 0])
                        cube([50 + fillet, fillet, 10]);
                        translate([shifting - fillet, (readerLen + 2 * fillet - 50) / 2 + 50, 0])
                        cube([50 + fillet, fillet, 10]);
                        translate([shifting - fillet, (readerLen + 2 * fillet - 50) / 2 - fillet, 10])
                        cube([65 + fillet, 50 + 2 * fillet, fillet]);
                        
                        translate([shifting + 65, (readerLen + 2 * fillet - 50) / 2 - fillet - 33, 10])
                        cube([fillet, readerLen, readerHgt + fillet]);
                        translate([shifting + 65 - baffle, (readerLen + 2 * fillet - 50) / 2 - 2 * fillet - 33, 10])
                        cube([baffle + fillet, fillet, readerHgt + fillet]);
                        translate([shifting + 65 - baffle, (readerLen + 2 * fillet - 50) / 2 - fillet - 33 + readerLen, 10])
                        cube([baffle + fillet, fillet, readerHgt + fillet]);
                        translate([shifting + 65 - baffle, (readerLen + 2 * fillet - 50) / 2 - 2 * fillet - 33, 10])
                        cube([baffle + fillet, fillet + readerLen, fillet]);
                        translate([shifting + 65 - baffle, (readerLen + 2 * fillet - 50) / 2 - 2 * fillet - 33, 10 + readerHgt + fillet])
                        cube([baffle + fillet, fillet + readerLen + fillet, fillet]);
                        // add until above half
                    }
                    translate([shifting + 65 - baffle + 4 * fillet, (readerLen + 2 * fillet - 50) / 2 - 36 - fillet, 10])
                    cube([baffle - 4 * fillet, 36, fillet]);
                    translate([shifting + 65 - baffle + 4 * fillet, (readerLen + 2 * fillet - 50) / 2 - 36 - fillet, 10 + readerHgt + fillet])
                    cube([baffle - 4 * fillet, readerLen, fillet]);
                    translate([shifting + 65 - baffle + 4 * fillet, (readerLen + 2 * fillet - 50) / 2 + 56 - fillet, 10])
                    cube([baffle - 4 * fillet, 37, fillet]);
                                    
                    translate([shifting + 65 - baffle + fillet, (readerLen + 2 * fillet - 50) / 2 - 2 * fillet - 33, 10 + fillet])
                    cube([baffle - fillet, readerLen + 2 * fillet, readerHgt]);
                }
                translate([shifting - fillet + 10, (readerLen + 2 * fillet - 50) / 2 - fillet, 10 + fillet + readerHgt])
                cube([24 + baffle, 56, fillet]);
            }
            translate([-fillet, -fillet, -fillet])
            cube([200, fillet, 200]);
            translate([-fillet, readerLen + 2 * fillet, -fillet])
            cube([200, fillet * 2, 200]);
        }
        translate([50, 0, 10])
        cube([50, fillet, 20]);
        translate([50, readerLen + fillet, 10])
        cube([50, fillet, 25]);
        translate([shifting + 65 - baffle, (readerLen + 2 * fillet - 50) / 2 - 2 * fillet - 35, 10])
        cube([baffle + fillet, 4, readerHgt + 2 * fillet]);
    }
    
    translate([0, -300, 96]) cube([3000, 3000, 3000]);
    translate([0, fillet, 10 + fillet])
    cube([90, 4, readerHgt]);
    translate([90 - baffle + 4 * fillet, fillet, 10])
    cube([baffle - 4 * fillet, fillet, readerHgt + 2 * fillet]);
    
//    translate([12, (readerLen - 50) / 2 + fillet, -fillet])
//    cube([10 + fillet, 50, 10 + fillet]);
    translate([12 - 2 * fillet, (readerLen - 50) / 2 + fillet, -fillet])
    cube([10 + 3 * fillet, 50, 10 + fillet]);
}


//translate([22, (readerLen - 50) / 2, 0])
//difference(){
//    rotate([270, 0, 0]) {
//        cylinder(h=50 + 2 * fillet, r=10 + fillet, center=false, $fn=100);
//    }
//    translate([0, fillet, 0])
//    rotate([270, 0, 0]) {
//        cylinder(h=50, r=10, center=false, $fn=100);
//    }
//    translate([0, 0, -(10 + fillet)])
//    cube([10 + fillet, 50 + 2 * fillet, 2 * (10 + fillet)]);
//    translate([-(10 + fillet), 0, -(10 + fillet)])
//    cube([10 + fillet, 50 + 2 * fillet, 10 + fillet]);
//}

translate([3, 50 + 2 * fillet + (readerLen - 50) / 2, 0])
difference(){
    rotate([0, 0, -90]){
        prism1(50 + 2 * fillet, 10 + 3 * fillet, 10 + fillet);
    }
    translate([fillet, -fillet, 0])
    rotate([0, 0, -90]){
        prism1(50, 10 + 2 * fillet, 10);
    }
}











