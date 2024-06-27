
void main() {

	// FOR Loop

	// WAP to find the even numbers between 1 to 10

	for (int iteration = 1; iteration <= 10; iteration++) {

		if ( iteration % 2 == 0) {
			print(iteration);
		}
	}


	// for ..in loop
	List planetList = ["Mercury", "Saturn", "Earth", "Mars"];

	for (String planet in planetList) {
		print(planet);
	}
}
