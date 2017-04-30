class Walker {

	float prevX, prevY;
	float x, y;
	float xOff, yOff;

	Walker () {
		x = width / 2;
		y = height / 2;

		xOff = random(0, 10000);
		yOff = random(0, 10000);
	}

	void step() {
		prevX = x;
		prevY = y;

		x += map(noise(xOff), 0, 1, -1, 1);
		y += map(noise(yOff), 0, 1, -1, 1);

		xOff += 0.01;
		yOff += 0.01;
	}

	void display() {
		stroke(255, 170);
		line(prevX, prevY, x, y);
	}

}