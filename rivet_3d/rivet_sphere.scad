a = 0.3;//rivet_radius
b = 0.5;//rivet_height
c = 25;//number of polygons

module target(){
	for(i = [0:a+2:+20], j = [0:a*2+2:+20]){
		translate([i,j,0])
			sphere(a, $fn = c);
	}
}
        
module tool(){
    translate([-3.5,-3.5,-b])		
        cube([25,25,b]);
}

union(){
    target();
    tool();
}