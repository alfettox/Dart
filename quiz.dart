import 'dart:io';

void main() {
  List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital of France?',
      'answer': 'Paris',
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'answer': 'Mars',
    },
    {
      'question': 'What is 7 multiplied by 8?',
      'answer': 56,
    },
  ];

  int score = 0;

  print('Welcome to the Quiz Game!');
  for (var i = 0; i < questions.length; i++) {
    print('\nQuestion ${i + 1}: ${questions[i]['question']}');
    stdout.write('Your Answer: ');
    var userAnswer = stdin.readLineSync()!.trim();

    if (userAnswer == questions[i]['answer'].toString()) {
      print('Correct! You earned a point.');
      score++;
    } else {
      print('Incorrect. The correct answer is: ${questions[i]['answer']}');
    }
  }

  print('\nQuiz Complete!');
  print('Your Score: $score out of ${questions.length}');
}
