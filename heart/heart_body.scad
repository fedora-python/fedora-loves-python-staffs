difference() {
    union() {
        resize([123,0,0], auto=[1,1,1]) import("heart.stl");
        translate([0,0,-45]) import("../thing_to_thread_connector.stl");
    }
    #hull() scale([1.1,1,1]) resize([95,0,0], auto=[1,1,1]) import("heart.stl");
}