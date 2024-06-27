
void main() {

	// Switch Case Statements: Applicable for only 'int' and 'String'

	String grade = 'C';

	switch (grade) { //bool, double vlaue are not allowed in switch case statement. It is used to compare with int or String values.

		case 'A':
			print("Excellent grade of A");
			break;

		case 'B':
			print("Very Good !");
			break;

		case 'C':
			print("Good enough. But work hard");
			break;

		case 'F':
			print("You have failed");
			break;
		default:
			print("Invalid Grade");
	}
}

//Switch Case Statement acts similar to as if-else ladder statements. 