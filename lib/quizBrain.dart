import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The CPU contains both the ALU and a control unit. ', true),
    Question('A nanosecond is one-millionth of a second. ', false),
    Question(
        'A machine cycle is the series of operations required to process a single machine instruction.',
        true),
    Question('Supercomputers use parallel processors.', true),
    Question(
        'Object code is source code translated into machine language through a compiler. ',
        true),
    Question('Parallel processing uses more than one CPU. ', true),
    Question('Secondary storage is sometimes contained in the CPU. ', false),
    Question(
        'Program instructions written in a high-level language are called source code. ',
        true),
    Question(
        'With multiprogramming, two or more programs use the same computer resources simultaneously. ',
        false),
    Question(
        'Time sharing divides programs into variable-length portions, each of which takes a turn in rotation. ',
        false),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Assembly language is designed for specific machines and microprocessors.',
        true),
    Question(
        'Traditional software development requires object-oriented programming. ',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
