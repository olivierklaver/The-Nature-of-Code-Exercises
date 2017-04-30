class Walker {

	float x, y;
	float prevX, prevY;

	Walker () {
		x = width / 2;
		y = height / 2;
	}

	float squaredMontecarlo(int size) {
		while (true) {
			float r1 = random(size);
			float probability = r1*r1;
			float r2 = random(size);

			if (r2 < probability) {
				return r1;
			}
		}
	}

	void step() {
		prevX = x;
		prevY = y;

		float stepsize = squaredMontecarlo(10);

		x += random(-stepsize, stepsize);
		y += random(-stepsize, stepsize);
	}

	void display() {
		stroke(255, 170);
		line(prevX, prevY, x, y);
	}

}