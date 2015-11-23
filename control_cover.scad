var PLATE_WIDTH = 5.875;
var PLATE_HEIGHT = 1.5625;
var PLATE_DEPTH = 0.5625;

rotate([90,0,0]) {
    cube([PLATE_WIDTH, PLATE_HEIGHT, .0.1], center=true);
    
    color("blue") {
        scale([1,1,.1]) {
            rotate([0,180,0]) {
                translate([0,0,0.5]) {
                    text("v0.1", .3, halign="center", valign="center");
                }
            }
        }
    }
    
    translate([-2.9375,-.25,-.5625]) {
        cube([.125, .5, .5625]);
        translate([0,.125,0]) {
            color("red") {
                cube([.25, .25, .125]);
            }
        }
    }
    
    translate([2.8125,-.25,-.5625]) {
        cube([.125, .5, .5625]);
        translate([-.125,.125,0]) {
            color("red") {
                cube([.25, .25, .125]);
            }
        }
    }
}
