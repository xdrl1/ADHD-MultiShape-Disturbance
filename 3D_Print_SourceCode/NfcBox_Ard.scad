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

translate([0, 0, 1])
difference(){
    cube([
        boxInternalLen + 2 * totalThick, 
        boxInternalLen + 2 * totalThick, 
        boxInternalLen + 2 * totalThick - thick
    ], false);
    
    translate([totalThick, totalThick, 3])
    cube([
        boxInternalLen,
        boxInternalLen,
        boxInternalLen + totalThick + thick
    ], false);
    
    translate([
        (boxInternalLen + 2 * totalThick) / 2 + platformWdh / 2 - 0.2, 
        thick, 
        boxInternalLen + 2 * totalThick - thick - (height + wall)
    ])
    cube([
        nfcReaderSupporterInternalWidth + 2 * wall + 0.2,
        boxInternalLen + 2 * thick,
        height + wall
    ], false);
    
    translate([
        (boxInternalLen + 2 * totalThick) / 2 - 45.5 + platformWdh / 2, 
        thick, 
        boxInternalLen + 2 * totalThick - thick - (height + wall) + 10
    ])
    cube([
        12.2,
        boxInternalLen + 2 * thick,
        height + wall - 10
    ], false);
    
    translate([0, (boxInternalLen + 2 * totalThick - 20) / 2, 3])
    cube([totalThick, 20, 15], false);
    
    translate([
        (boxInternalLen + 2 * totalThick - hole) / 2, 
        (boxInternalLen + 2 * totalThick - hole) / 2, 
        0
    ])
    cube([hole, hole, 3], false);
}
