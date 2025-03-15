/*
String convertArabicWordToMath({required String arabicWord}) {
  //this file is required because in mic i say ضرب, قسمة, باقي القسمة but not work because the the mic take from me arabic speech like this ىؤتىينؤى
  Map<String, String> replaceArabicWordToMath = {
    'زائد': '+',
    'ناقص': '-',
    'ضرب': '*',
    '×': '*',
    'تقسيم': '/',
    'مود': '%',
    'موت': '%',
    'مد': '%',
  };
  //the mic convert ضرب to *(in programming the * is multiplication but x is letter) but in calculate the operation 5 * 5 it doesn't know and it give you the result 55 because it know the x is multiplication
  replaceArabicWordToMath.forEach((word, operator) {
    arabicWord = arabicWord.replaceAll(word, operator).trim();
  });
  //forget the shape for forEach => .forEach((1: if before . List you have just parameter(to asign all elements in List to this parameter), 2: if before . Map you have two parameters(word(key) and operator(value) to asign all keys in Map to word and asign all values in Map to operator)){})
  //you replace key to value and asign to arabicWord, and delete any spaces in the value, after that you return the operator(because you convert arabicWord to mathOperator)
  //you say 5 زائد (5) will return 5+5, i put () because i can't but زائد in the middle between 5 and 5
  return arabicWord;
}
*/
