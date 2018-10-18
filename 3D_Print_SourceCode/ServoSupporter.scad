wall = 3;
height = 80;
thick = 3;
totalThick = 6;
boxInternalLen = 150;
platformWdh = 10;
platformLen = 50;
nfcReaderSupporterInternalWidth = 15.6;
nfcReaderLen = 122;
nfcReaderWdhHalf = 37;
step = nfcReaderSupporterInternalWidth + wall;

tunnelHeight = 42;
slot = 28;

width = 8.38;
length = boxInternalLen + 2 * thick;
dist = 10.08;

difference(){
    union(){
        cube([platformLen + 2 * wall, tunnelHeight, wall + 3],false);
        translate([0, 0, wall + 3])
        cube([wall, tunnelHeight, platformWdh],false);
        translate([platformLen + wall, 0, wall + 3])
        cube([wall, tunnelHeight, platformWdh],false);
    }
    translate([(platformLen + 2 * wall - slot) / 2, (tunnelHeight - slot) / 2, 0])
    cube([slot, slot, wall],false);
}


translate([100, 0, 0])
difference(){
    union(){
        cube([width, length, 12],false);
        translate([width, 24, 0])
        cube([40.4, 12, 12],false);
        translate([width, length - 24 - 12, 0])
        cube([40.4, 12, 12],false);
    }   
    translate([width / 2, (length - dist) / 2, 2.5])
    cylinder (h = 9.5, r = 0.8, $fn=100);
    translate([width / 2, (length - dist) / 2 + 10.08, 2.5])
    cylinder (h = 9.5, r = 0.8, $fn=100);  
}

translate([100 + width + 40.4, 0, 0])
difference(){
    cube([width, length, 12],false);
    translate([width / 2, (length - dist) / 2, 2.5])
    cylinder (h = 9.5, r = 0.8, $fn=100);
    translate([width / 2, (length - dist) / 2 + 10.08, 2.5])
    cylinder (h = 9.5, r = 0.8, $fn=100);  
}