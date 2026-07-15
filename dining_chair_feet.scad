// SPDX-License-Identifier: MIT

$fa = 0.4;
$fs = 1;
$fn = 1000;

height = 40;
diam = 25.82;
width = 30.83;
outer_foot_diam = diam + 4;
translate_width = 4.75;

module outer_foot() {
    linear_extrude(h = height)
        hull() {
            circle(d = outer_foot_diam);
            // translate enough to satisfy width
            translate([0, translate_width, 0])circle(d = outer_foot_diam);
        }
}

module inner_foot() {
    linear_extrude(h=height)
        hull() {
            circle(d=diam);
            // translate enough to satisfy width
            translate([0, translate_width, 0])circle(d=diam);
        }
}

difference() {
    outer_foot();
   translate([0, 0, 4])inner_foot();
}