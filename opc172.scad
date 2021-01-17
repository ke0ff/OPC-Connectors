// OpenSCAD 2019.05
// OPC-172 FO Housing for the uX766
// Joe Haas, KE0FF, 01/12/2021
// This is the fiber-optic housing for the ICOM UX-766 interface (also used by the IC900 and others).
//	This is a respin to re-create the STL file that was "lost".
//
// Ref shapes "ghosted" with "%'
//
//	REV-002: Extended "prongs" to compensate for "elephant's foot" during 3D print.  Prongs are post-
//				processed by saw or razor cut to establish finished length of 3.175 mm (0.125").
//  REV-001: initial design

// OPC-172 model follows:

difference(){
	union(){																					// main union (the "stuff" of the model)
		translate([-3.175,0,-1.6]) cylinder(h=4.775, r=1.397, center=false, $fn=16);			// "prongs"
		translate([3.175,0,-1.6]) cylinder(h=4.775, r=1.397, center=false, $fn=16);
		translate([-7.43,-2.35,3.174]) cube(size=[14.86,4.7,43]);								// main body
		translate([-.9525,2.35,7.62]) cube(size=[1.905,1.524,3.81]);							// polarizing tab
		translate([-1,-3,41.5]) cube(size=[2,6,4.67]);											// "T" stop
		translate([-6,-3,26]) cube(size=[12,6,2]);												// "B" stop
	}
	// Difference (subtraction) elements (the anti-"stuff" of the model)
	translate([4.953,-2.5,0]) cube(size=[5,5,7.112]);											// bottom notch
	translate([-9.953,-2.5,0]) cube(size=[5,5,7.112]);											// bottom notch
	translate([-3.175,0,-2]) cylinder(h=63, r=.508, center=false, $fn=16);						// fiber hole
	translate([3.175,0,-2]) cylinder(h=63, r=.508, center=false, $fn=16);						// fiber hole
	translate([-3.175,0,14.296]) cylinder(h=61, r=1.143, center=false, $fn=16);					// fiber jacket hole
	translate([3.175,0,14.296]) cylinder(h=61, r=1.143, center=false, $fn=16);					// fiber jacket hole
	translate([6.015,-2.5,5]) rotate([0,12.4,0]) cube(size=[5,5,7.112]);						// bottom bevel
	translate([-11.13,-2.5,5]) rotate([0,-12.4,0]) cube(size=[5,5,7.112]);						// bottom bevel
	translate([5.335,-2.5,13.54]) cube(size=[5,5,11]);											// top body
	translate([-10.335,-2.5,13.54]) cube(size=[5,5,11]);										// top body
	translate([10.355,-2.5,8.5]) rotate([0,-45,0]) cube(size=[5,5,7.112]);						// top bevel
	rotate([0,0,180]) translate([10.355,-2.5,8.5]) rotate([0,-45,0]) cube(size=[5,5,7.112]);	// top bevel
	translate([3.1,-2.5,24.206]) cube(size=[5,5,5]);											// top body2
	rotate([0,0,180]) translate([3.1,-2.5,24.206]) cube(size=[5,5,5]);							// top body2
	translate([3.1,-5,24.206]) rotate([0,-7,0]) cube(size=[10,10,28]);							// taper
	rotate([0,0,180]) translate([3.1,-5,24.206]) rotate([0,-7,0]) cube(size=[10,10,28]);		// taper
	translate([3.175,0,24.206]) rotate([0,-5,0]) cylinder(h=28, r=1.143, center=false, $fn=16);						// fiber jacket trough
	rotate([0,0,180]) translate([3.175,0,24.206]) rotate([0,-5,0]) cylinder(h=28, r=1.143, center=false, $fn=16);	// fiber jacket trough
	translate([-1.5,5,9.5]) rotate([45,0,0]) cube(size=[3,3,3]);								// polarizing tab cham
}