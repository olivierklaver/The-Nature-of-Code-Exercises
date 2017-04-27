void setup() {
	size(512, 512);
	pixelDensity(displayDensity());

	background(0);
	noStroke();
	colorMode(HSB, 100);
}

void draw() {
	// Generate and set color
	double basis = randomGaussian();
	int hue = (int) (basis * 10) + 50;
	int saturation = (int) (basis * 20) + 75;
	int alpha = (int) basis * 80 + 10; 
	fill(hue, saturation, 150, alpha);

	// Generate position
	float x = randomGaussian() * 50 + (height/2);
	float y = randomGaussian() * 50 + (width/2);

	// Generate size and draw
	float diameter = 50 - (float) basis * 50;

	// Draw
	ellipse(x, y, diameter, diameter);
}