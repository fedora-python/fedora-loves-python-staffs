module fedora(o=3) {
    resize([123,0,40], auto=[1,1,0]) {
        difference() {
            union() {
                minkowski() {
                    linear_extrude(height=36*2-o, convexity=10) offset(r=-o) import("background.dxf");
                    sphere(r=o, $fn=50);
                }
                translate([3.3,3.3,0]) {
                    linear_extrude(height=38*2, convexity=10) import("8.dxf");
                    translate([8.255,0,0]) linear_extrude(height=40*2, convexity=10) import("f.dxf");
                }
            }
            translate([3,3,3]) linear_extrude(height=36*2*0.87) scale(0.9) import("background.dxf");
        }
    }
}

translate([-123/2,-4.5,0]) rotate([90,0,0]) 
    //projection(cut=true)
    translate([0,0,-20]) fedora();

difference() {
    translate([0,0,-1]) import("../thing_to_thread_connector.stl");
    translate([-50,-50,1.9])  cube(100);
}
