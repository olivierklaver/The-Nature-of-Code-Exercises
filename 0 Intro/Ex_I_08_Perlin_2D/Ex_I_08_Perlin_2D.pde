int pixelWidth, pixelHeight;

size(512, 512);
pixelDensity(displayDensity());
colorMode(HSB);

pixelWidth = width * displayDensity();
pixelHeight = height * displayDensity();

loadPixels();

// noiseDetail(1, 0.35);

float xOff = 0;
for (int x = 0; x < pixelWidth; ++x) {
	float yOff  = 0;
	for (int y = 0; y < pixelHeight; ++y) {
		float hueSat = map(  noise(x * 0.0026 + 0.0,  y * 0.00 + 0.0)  , 0, 1, 0, 255);
		float lum = map(  noise(x * 0.0013 + 0.0,  y * 0.0006 + 0.2)  , 0, 1, -142, 275);
		pixels[x+y*pixelHeight] = color(hueSat*1.2, hueSat*0.9, lum);
	}
}

updatePixels();