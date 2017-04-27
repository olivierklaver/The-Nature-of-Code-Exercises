class Walker {

	float x, y;
	float prevX, prevY;
	PVector randVec;

	Walker () {
		x = width / 2;
		y = height / 2;
	}

	void step() {
		prevX = x;
		prevY = y;

		randVec = PVector.random2D();
		float len = randomGaussian() * 7;
		randVec.setMag(len);

		x += (float) randVec.x;
		y += (float) randVec.y;
	}

	void display() {
		stroke(255, 170);
		line(prevX, prevY, x, y);
	}

}