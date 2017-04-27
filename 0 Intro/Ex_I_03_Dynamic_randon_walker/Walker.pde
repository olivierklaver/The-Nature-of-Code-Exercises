class Walker {

	float x, y;

	Walker () {
		x = width / 2;
		y = height / 2;
	}

	void step() {
		
		// If the walker too close the the mouse
		// tend towards the oposite direction
		if (dist(x, y, mouseX, mouseY) < 50) {
			if (x < mouseX) x += random(-2, 1);
			else x += random(-1, 2);

			if (y < mouseY) y += random(-2, 1);
			else y += random(-1, 2);
		}
		else {
			x += random(-1, 1);
			y += random(-1, 1);
		}
	}

	void display() {
		stroke(255);
		point(x, y);
	}

}