
void main() {

	// BREAK keyword
	// Using Labels
	// Nested FOR Loop

  //Here Labels are used for particular break of for loop as if we do not use labels it will directly address to the nearest parent for loop

	myOuterLoop: for (int i = 1; i <= 3; i++) { //labels used as myOuterLoop

		innerLoop: for (int j = 1; j <= 3; j++) {
			print("$i $j");

			if (i == 2 && j == 2) {
				break myOuterLoop;
			}
		}
	}
}