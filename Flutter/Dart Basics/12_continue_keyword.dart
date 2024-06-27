
void main() {

	// CONTINUE keyword is used to skip particular statements after that condition.
	// Using Labels

	myOuterLoop: for (int i = 1; i <= 3; i++) {

		myInnerLoop: for (int j = 1; j <= 3; j++) {

			if (i == 2 && j == 2) {
				continue myOuterLoop;
			}
			print("$i  $j");
		}
	}
}