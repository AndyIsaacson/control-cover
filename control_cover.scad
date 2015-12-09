PLATE_WIDTH = 5.875;
PLATE_HEIGHT = 1.5625;
PLATE_DEPTH = 0.5625;

ARM_WIDTH = 0.04;

rotate([90,0,0]) {
    cube([PLATE_WIDTH + 2*ARM_WIDTH, PLATE_HEIGHT, 0.02], center=true);
    
    color("blue") {
        scale([1,1,.1]) {
            rotate([0,180,0]) {
                translate([0,0,0.5]) {
                    linear_extrude(height=0.1)
                        text("v0.2", .3, halign="center", valign="center");
                }
            }
        }
    }
    
    translate([PLATE_WIDTH * -.5 - ARM_WIDTH,-.25,PLATE_DEPTH * -1]) {
        // TODO - add tab width to plate depth so it's long enough to reach behind
        cube([ARM_WIDTH, .5, PLATE_DEPTH]);
        translate([0,.125,0]) {
            color("red") {
                // TODO - make these into triangular catches
                cube([.25, .25, .125]);
            }
        }
    }
    
    translate([(PLATE_WIDTH * 0.5) + ARM_WIDTH/2 - 0.01,-.25,PLATE_DEPTH * -1]) {
        cube([ARM_WIDTH, .5, PLATE_DEPTH]);
        translate([-1*.25,.125,0]) {
            color("red") {
                cube([.25, .25, .125]);
            }
        }
    }
}
