Walker w;

void setup() {
	size(512, 512);
	pixelDensity(displayDensity());

	frameRate(120);

	w = new Walker();
	
	background(0);
}

void draw() {
	w.step();
	w.display();
}