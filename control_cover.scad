PLATE_WIDTH = 5.875;
PLATE_HEIGHT = 1.5625;
PLATE_DEPTH = 0.5625;

FACE_THICKNESS = 0.04;
TAB_THICKNESS = 0.125;
TAB_LENGTH = 0.3;
TAB_WIDTH = 0.3;

ARM_LENGTH = PLATE_DEPTH + TAB_THICKNESS;
ARM_WIDTH = 0.04;

rotate([90,0,0]) {
    
    // Draw the shape of the controller, but don't print it
    %cube([PLATE_WIDTH, PLATE_HEIGHT, PLATE_DEPTH], center=true);
    
    translate([0,0,0.5*PLATE_DEPTH]) {
        cube([PLATE_WIDTH + 2*ARM_WIDTH, PLATE_HEIGHT, FACE_THICKNESS], center=true);
        
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
        
        
        translate([(PLATE_WIDTH * -.5) - ARM_WIDTH,-0.25,ARM_LENGTH * -1]) {
            // TODO - add tab width to plate depth so it's long enough to reach behind
            cube([ARM_WIDTH, .5, ARM_LENGTH]);
            translate([0, 0.5*TAB_WIDTH, 0]) {
                color("red") {
                    // TODO - make these into triangular catches
                    cube([TAB_LENGTH, TAB_WIDTH, TAB_THICKNESS]);
                }
            }
        }
        
        translate([(PLATE_WIDTH * 0.5) + ARM_WIDTH/2 - 0.01,-.25,ARM_LENGTH * -1]) {
            cube([ARM_WIDTH, .5, ARM_LENGTH]);
            translate([-1*TAB_LENGTH, 0.5*TAB_WIDTH, 0]) {
                color("red") {
                    cube([TAB_LENGTH, TAB_WIDTH, TAB_THICKNESS]);
                }
            }
        }
    }
}
