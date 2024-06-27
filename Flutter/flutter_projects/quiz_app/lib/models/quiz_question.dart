class QuizQuestion { // Defining a class to represent a quiz question
  const QuizQuestion(this.text, this.answers); // Constructor to initialize question text and answers

  final String text; // Final variable to store question text
  final List<String> answers; // Final variable to store list of answers

  List<String> get shuffledAnswers { // Getter method to return shuffled list of answers
    final shuffledList = List.of(answers); // Creating a copy of answers list
    shuffledList.shuffle(); // Shuffling the copied list
    return shuffledList; // Returning the shuffled list
  }
}
