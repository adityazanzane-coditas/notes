

// OBJECTIVES
// 1. Define a Function
// 2. Pass parameters to a Function
// 3. Return value from a Function
// 4. Test that by default a Function returns null

void main() {

	findPerimeter(4, 2);

	int rectArea = getArea(10, 5);
	print("The area is $rectArea");
}

void findPerimeter(int length, int breadth) { //void is used so we cannot return anything

	int perimeter = 2 * (length + breadth);
	print("The perimeter is $perimeter");
}

int getArea(int length, int breadth) { //int is used for integer output of function

	int area = length * breadth;
	return area;
}

//NOTE: If return statement is missing the function in dart bydefault return NULL : so always mention the return type