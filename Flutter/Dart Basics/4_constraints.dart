
void main() {

	// final once defined cannot define again
	final cityName = 'Pune';
	//	name = 'Peter';     // Throws an error

	final String countryName = 'India';

	// const
	const PI = 3.14;
	const double gravity = 9.8;
}

class Circle {

	final color = 'Blue';
	static const PI = 3.14; // Static means shared among all instances of the class, not individual to each instance.
  //hence you cannot use const inside class directly
}