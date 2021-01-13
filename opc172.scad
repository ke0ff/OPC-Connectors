// OpenSCAD 2019.05
// OPC-172 FO Housing for the uX766 REV-001
// Joe Haas, KE0FF, 01/12/2021
// This is the fiber-optic housing for the ICOM OPC-172 fiber-optic cable used with the ICOM UX-766
//  interface (also used by the IC900 and others).  This is a respin of the original 3D printed design
//	to re-create when original STL file was lost.
// The fiber cable is stripped and secured with lacing cord or small cable ties.  The jacket and fiber
//	holes will generally have to be "chased" on a drill press to produce the proper finished dims to 
//	accept the jacket and fiber.  See PDF writeup for more information.

// OPC172
difference(){
	union(){
		// main union - this makes the "stuff" of the connector
		translate([-3.175,0,0]) cylinder(h=3.175, r=1.397, center=false, $fn=16);	// fiber "prongs"
		translate([3.175,0,0]) cylinder(h=3.175, r=1.397, center=false, $fn=16);
		translate([-7.43,-2.35,3.174]) cube(size=[14.86,4.7,43]);					// main body
		translate([-.9525,2.35,7.62]) cube(size=[1.905,1.524,3.81]);				// polarizing tab
		translate([-1,-3,41.5]) cube(size=[2,6,4.67]);								// "T" stop
		translate([-6,-3,26]) cube(size=[12,6,2]);									// "B" stop
	}
	// difference items... the following lines take away from the "stuff" to finish the shape
	translate([4.953,-2.5,0]) cube(size=[5,5,7.112]);								// bottom notch
	translate([-9.953,-2.5,0]) cube(size=[5,5,7.112]);								// bottom notch
	translate([-3.175,0,-.01]) cylinder(h=61, r=.508, center=false, $fn=16);		// fiber hole
	translate([3.175,0,-.01]) cylinder(h=61, r=.508, center=false, $fn=16);			// fiber hole
	translate([-3.175,0,14.296]) cylinder(h=61, r=1.143, center=false, $fn=16);		// fiber jacket hole
	translate([3.175,0,14.296]) cylinder(h=61, r=1.143, center=false, $fn=16);		// fiber jacket hole
	translate([6.015,-2.5,5]) rotate([0,12.4,0]) cube(size=[5,5,7.112]);			// bottom bevel
	translate([-11.13,-2.5,5]) rotate([0,-12.4,0]) cube(size=[5,5,7.112]);			// bottom bevel
	translate([5.335,-2.5,13.54]) cube(size=[5,5,11]);								// top body
	translate([-10.335,-2.5,13.54]) cube(size=[5,5,11]);							// top body
	translate([10.355,-2.5,8.5]) rotate([0,-45,0]) cube(size=[5,5,7.112]);			// top bevel
	rotate([0,0,180]) translate([10.355,-2.5,8.5]) rotate([0,-45,0]) cube(size=[5,5,7.112]);	// top bevel
	translate([3.1,-2.5,24.206]) cube(size=[5,5,5]);								// top body2
	rotate([0,0,180]) translate([3.1,-2.5,24.206]) cube(size=[5,5,5]);				// top body2
	translate([3.1,-5,24.206]) rotate([0,-7,0]) cube(size=[10,10,28]);				// taper
	rotate([0,0,180]) translate([3.1,-5,24.206]) rotate([0,-7,0]) cube(size=[10,10,28]);	// taper
	translate([3.175,0,24.206]) rotate([0,-5,0]) cylinder(h=28, r=1.143, center=false, $fn=16);		// fiber jacket trough
	rotate([0,0,180]) translate([3.175,0,24.206]) rotate([0,-5,0]) cylinder(h=28, r=1.143, center=false, $fn=16);		// fiber jacket trough
	translate([-1.5,5,9.5]) rotate([45,0,0]) cube(size=[3,3,3]);					// polarizing tab cham
}