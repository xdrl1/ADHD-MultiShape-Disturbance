width = 38;
length = 40;
slot = 2;

intersection(){
    union(){
        cylinder (h = 3, r = 24, $fn=4);
        translate([0, 0, 3])
        cylinder (h = 1.5, r = 19.8, $fn=4);
    }
    cylinder (h = 5, r = 22, $fn=100);
}


translate([50, 0, 0])
intersection(){
    difference(){
        cylinder (h = 3, r = 24, $fn=4);
        translate([0, 0, 1])
        cylinder (h = 2, r = 19.9, $fn=4);
    }
    cylinder (h = 5, r = 22, $fn=100);
}


//module prism(l, w, h){
//    polyhedron(
//        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
//        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
//    );
//}
//
//difference(){
//    cube([40, 40, 3]);   
//    
//    translate([1, 0, 1])
//    difference(){
//        cube([width, length, slot]);
//        translate([slot, 0, slot])
//        rotate(a=90, v=[0, 0, 1]){
//            prism(length, slot, -slot);
//        }
//        translate([width - slot, 0, slot])
//        rotate(a=90, v=[0, 0, 1]){
//            prism(length, -slot, -slot);
//        }
//    }
//}
//
//translate([50, 0, 0])
//cube([40, 40, 3]);
//translate([89.1, 0, 5])
//difference(){
//    rotate(a = 180, v=[0, 1, 0]){
//        difference(){
//            cube([width - 0.2, length, slot]);
//            translate([slot, 0, slot])
//            rotate(a=90, v=[0, 0, 1]){
//                prism(length, slot, -slot);
//            }
//            translate([width - slot - 0.2, 0, slot])
//            rotate(a=90, v=[0, 0, 1]){
//                prism(length, -slot, -slot);
//            }
//        }
//    }
//    translate([-19.1, 20, -0.5])
//    cylinder (h = 0.5, r = 14, $fn=200);
//}