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


difference(){
    union(){
        translate([0, (boxInternalLen + 2 * wall - platformLen) / 2, 0])
        cube([platformWdh, platformLen, 10 + wall],false);
        
        translate([platformWdh, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, 0, 0])
        cube([nfcReaderSupporterInternalWidth, boxInternalLen + 2 * thick, wall],false);
        
        translate([platformWdh + wall, 0, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall, boxInternalLen + 2 * thick - wall, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall + nfcReaderSupporterInternalWidth, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
    }
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall - 10, 0])
    cube([nfcReaderSupporterInternalWidth, 10, wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, wall + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height- wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall * 2 + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height - wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall])
    cube([wall, nfcReaderLen, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall + nfcReaderWdhHalf])
    cube([wall, nfcReaderLen, height - nfcReaderWdhHalf - wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 2 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 3 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 4 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 5 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 , wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
}

translate([40, 0, 0])
difference(){
    union(){
        translate([0, (boxInternalLen + 2 * wall - platformLen) / 2, 0])
        cube([platformWdh, platformLen, 10 + wall],false);
        
        translate([platformWdh, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, 0, 0])
        cube([nfcReaderSupporterInternalWidth, boxInternalLen + 2 * thick, wall],false);
        
        translate([platformWdh + wall, 0, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall, boxInternalLen + 2 * thick - wall, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall + nfcReaderSupporterInternalWidth, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
    }
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall - 10, 0])
    cube([nfcReaderSupporterInternalWidth, 10, wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, wall + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height- wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall * 2 + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height - wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall])
    cube([wall, nfcReaderLen, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall + nfcReaderWdhHalf])
    cube([wall, nfcReaderLen, height - nfcReaderWdhHalf - wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 2 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 3 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 4 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 5 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 , wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
}

translate([80, 0, 0])
difference(){
    union(){
        translate([0, (boxInternalLen + 2 * wall - platformLen) / 2, 0])
        cube([platformWdh, platformLen, 10 + wall],false);
        
        translate([platformWdh, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, 0, 0])
        cube([nfcReaderSupporterInternalWidth, boxInternalLen + 2 * thick, wall],false);
        
        translate([platformWdh + wall, 0, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall, boxInternalLen + 2 * thick - wall, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall + nfcReaderSupporterInternalWidth, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
    }
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall - 10, 0])
    cube([nfcReaderSupporterInternalWidth, 10, wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, wall + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height- wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall * 2 + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height - wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall])
    cube([wall, nfcReaderLen, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall + nfcReaderWdhHalf])
    cube([wall, nfcReaderLen, height - nfcReaderWdhHalf - wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 2 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 3 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 4 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 5 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 , wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
}

translate([120, 0, 0])
difference(){
    union(){
        translate([0, (boxInternalLen + 2 * wall - platformLen) / 2, 0])
        cube([platformWdh, platformLen, 10 + wall],false);
        
        translate([platformWdh, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, 0, 0])
        cube([nfcReaderSupporterInternalWidth, boxInternalLen + 2 * thick, wall],false);
        
        translate([platformWdh + wall, 0, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall, boxInternalLen + 2 * thick - wall, height])
        cube([nfcReaderSupporterInternalWidth, wall, wall],false);
        
        translate([platformWdh + wall + nfcReaderSupporterInternalWidth, 0, 0])
        cube([wall, boxInternalLen + 2 * thick, height + wall],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
        
        translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
        cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf],false);
    }
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall - 10, 0])
    cube([nfcReaderSupporterInternalWidth, 10, wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, wall + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height- wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall * 2 + 2, wall])
    cube([wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 - wall - 4, height - wall],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall])
    cube([wall, nfcReaderLen, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall + nfcReaderSupporterInternalWidth, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, wall + nfcReaderWdhHalf])
    cube([wall, nfcReaderLen, height - nfcReaderWdhHalf - wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall, 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 2 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 3 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 4 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + wall + 5 * step , 0])
    cube([nfcReaderSupporterInternalWidth, nfcReaderSupporterInternalWidth, wall],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 , wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
    
    translate([platformWdh + wall, (boxInternalLen + 2 * thick - nfcReaderLen - 2 * wall) / 2 + nfcReaderLen + wall, wall])
    cube([nfcReaderSupporterInternalWidth, wall, nfcReaderWdhHalf - wall - 2],false);
}
