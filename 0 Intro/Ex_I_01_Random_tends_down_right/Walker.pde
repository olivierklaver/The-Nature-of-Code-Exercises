class Walker {

	float x, y;

	Walker () {
		x = width / 2;
		y = height / 2;
	}

	void step() {
		x += random(-1, 1.06);
		y += random(-1, 1.06);
	}

	void display() {
		stroke(255);
		point(x, y);
	}

}