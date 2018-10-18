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

hole = 136;
slotHeight = 4;

difference(){
    union(){
        cube([
            boxInternalLen + 2 * totalThick, 
            boxInternalLen + 2 * totalThick, 
            thick
        ], false);
        
        translate([
            (boxInternalLen + 2 * totalThick) / 2 - 45.5 + platformWdh / 2 + 0.2, 
            thick, 
            thick
        ])
        cube([12 - 0.2, thick, slotHeight], false);        
        translate([
            (boxInternalLen + 2 * totalThick) / 2 - 45.5 + platformWdh / 2 + 0.2, 
            boxInternalLen + totalThick,
            thick
        ])
        cube([12 - 0.2, thick, slotHeight], false);

        
        translate([
            boxInternalLen + totalThick - wall, 
            totalThick + 0.2, 
            thick
        ])
        cube([wall - 0.2, 4 * wall, slotHeight], false);
        translate([
            boxInternalLen + totalThick - 4 * wall, 
            totalThick + 0.2, 
            thick
        ])
        cube([4 * wall - 0.2, wall, slotHeight], false);
        
        
        translate([
            boxInternalLen + totalThick - wall,
            boxInternalLen + totalThick - 4 * wall, 
            thick
        ])
        cube([wall - 0.2, 4 * wall - 0.2, slotHeight], false);
        translate([
            boxInternalLen + totalThick - 4 * wall,
            boxInternalLen + totalThick - wall, 
            thick
        ])
        cube([4 * wall - 0.2, wall - 0.2, slotHeight], false);
        
        
        translate([totalThick + 0.2, totalThick + 0.2, thick])
        cube([4 * wall, wall, slotHeight], false);
        translate([totalThick + 0.2, totalThick + 0.2, thick])
        cube([wall, 4 * wall, slotHeight], false);
        
        translate([
            totalThick + 0.2, 
            totalThick + boxInternalLen - 4 * wall - 0.2, 
            thick
        ])
        cube([wall, 4 * wall, slotHeight], false);
        translate([
            totalThick + 0.2, 
            totalThick + boxInternalLen - wall - 0.2, 
            thick
        ])
        cube([4 * wall, wall, slotHeight], false); 
    }

    translate([
        (boxInternalLen + 2 * totalThick - platformWdh) / 2, 
        (boxInternalLen + 2 * totalThick - platformLen) / 2, 
        0
    ])
    cube([platformWdh, platformLen, thick], false);
}
