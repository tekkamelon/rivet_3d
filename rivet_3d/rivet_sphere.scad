rivet_radius = 0.3;
rivet_height = 0.5; 
number_of_polygons = 25;

module target(){
	for(i = [0:rivet_radius+2:+20], j = [0:rivet_radius*2+2:+20]){
		translate([i,j,0])
			sphere(rivet_radius, $fn = number_of_polygons);
	}
}
        
module tool(){
    translate([-3.5,-3.5,-rivet_height])		
        cube([25,25,rivet_height]);
}

union(){
    target();
    tool();
}
