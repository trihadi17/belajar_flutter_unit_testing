import 'dart:math';

class Person {
  String name = '';
  int umur = 0;
  List<int> luckyNumbers = [];

  //getter
  int get age => umur;

  //setter
  set age(int value) {
    if (value < 0) {
      value *= -1;
    }
    umur = value;
  }

  //Constructor
  Person() {
    name = 'no name';
    umur = 0;
    Random r = Random();
    luckyNumbers = [];
    for (int i = 0; i < 3; i++) {
      luckyNumbers.add(r.nextInt(11));
    }
  }
}
