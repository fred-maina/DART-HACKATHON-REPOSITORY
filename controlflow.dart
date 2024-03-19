import 'dart:io';

void main() {
  int marks;
  
  // Ask user to input marks
  stdout.write("Enter the student's marks: ");
  String? marksInput = stdin.readLineSync();
  
  // Validate input
  try {
    marks = int.parse(marksInput!);
    
    // Determine grade based on marks
    String grade;
    if (marks > 85) {
      grade = "Excellent";
    } else if (marks >= 75 && marks <= 85) {
      grade = "Very Good";
    } else if (marks >= 65 && marks < 75) {
      grade = "Good";
    } else {
      grade = "Average";
    }
    
    // Print the grade
    print("Grade: $grade");
  } catch (e) {
    print("Invalid input! Please enter a valid integer.");
  }
}
