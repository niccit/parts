// SPDX-License-Identifier: MIT

$fa = 0.4;
$fs = 1;
$fn = 1000;

height = 40;
diam = 25.56; // 25.16 + 5
outer_diam = diam + 4;
base_diam = outer_diam + 3;
base_height = 1.7;

module foot_top() {
    union() {
        difference() {
            cylinder(d=outer_diam, h=height);
            translate([0, 0, 4])cylinder(d=diam, h=height);
        }
    }
}

module foot_bottom() {
    difference() {
        cylinder(d=outer_diam, h=base_height);
        translate([-18, -32, -2 - 0.01])cube([outer_diam + 5, outer_diam, 5]);
    }
}


union() {
    translate([0, 1, base_height - 1])foot_top();
    translate([0, 0.90, 0.75 - 0.01])rotate([-6, 0, 0])foot_bottom();
}
