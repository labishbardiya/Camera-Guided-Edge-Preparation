// Original parametric fixture concept. For mechanical fit review only.
// The tray is NOT a UV enclosure, interlock, or certified chemical process tool.
chip_size = 20;          // verify actual substrate: 10-20 mm target range
chip_clearance = 0.35;
tray_width = 70;
tray_length = 70;
tray_thickness = 5;
pocket_depth = 1.2;
corner_radius = 3;
fiducial_diameter = 2;
$fn = 48;

module roundplate(w,l,h,r) {
  hull() for(x=[-w/2+r,w/2-r],y=[-l/2+r,l/2-r])
    translate([x,y,0]) cylinder(h=h,r=r);
}

difference() {
  roundplate(tray_width,tray_length,tray_thickness,corner_radius);
  translate([0,0,tray_thickness-pocket_depth])
    cube([chip_size+chip_clearance,chip_size+chip_clearance,pocket_depth+0.1],center=true);
  // Two fiducials visible to an overhead camera.
  for(x=[-24,24]) translate([x,23,-0.1])
    cylinder(h=tray_thickness+0.2,d=fiducial_diameter);
  // Fastener clearances for an external supervised fixture.
  for(x=[-27,27],y=[-27,27]) translate([x,y,-0.1])
    cylinder(h=tray_thickness+0.2,d=3.2);
}
