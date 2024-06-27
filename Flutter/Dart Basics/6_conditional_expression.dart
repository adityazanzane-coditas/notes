
void main() {

	// Conditional Expressions
  //We use conditional expr to convert bunch of lines of code to a single line

	// 1.   condition ? exp1 : exp2
	// If condition is true, evaluates expr1 (and returns its value);
	// otherwise, evaluates and returns the value of expr2.

	int number1 = 2;
	int number2 = 3;

	int smallNumber = number1 < number2 ? number1 : number2;
	print("$smallNumber is smaller");



	// 2.   exp1 ?? exp2
	// If expr1 is non-null, returns its value; otherwise, evaluates and
	// returns the value of expr2.

	String name = "Aditya"; //if we put null it will throw an error like this:- Warning: Operand of null-aware operation '??' has type 'String' which excludes null.
//         String nameToPrint = name ?? "Guest User";
//                              ^
// 6_conditional_expression.dart:23:16: Error: The value 'null' can't be assigned to a variable of type 'String' because 'String' is not nullable.
//         String name = null;

	String nameToPrint = name ?? "Guest User";
	print(nameToPrint);
}