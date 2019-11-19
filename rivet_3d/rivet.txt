a = 0.3;//rivet_radius
b = 0.5;//rivet_height
c = 6;//number of polygons

union(){
	for(i = [0:a+2:+20],j = [0:a*2+2:+20]){
		translate([i,j,0])
		color("teal")	linear_extrude(height = b){
				circle(r = a, $fn = c);
				}
			}
		translate([-3.5,-3.5,-b])		
				cube([25,25,b]);
		}