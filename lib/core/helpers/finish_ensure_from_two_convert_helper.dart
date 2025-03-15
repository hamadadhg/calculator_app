import 'package:calculator/core/helpers/convert_arabic_word_to_numbers.dart';
import 'package:calculator/core/helpers/convert_arabic_word_to_operator.dart';

String finishEnsureFromTwoConvertHelper({required String wordFromMic}) {
  //this function assign word(number and operator) so this function to ensure all thing good and to ensure there are no any spaces, tab(8 space like \t) or newLine(\n), do you know there is \s to delete space, \t or \n
  //you say صفر زائد صفر
  wordFromMic = convertArabicWordToNumber(arabicWord: wordFromMic);
  //after this line the operation become 0 زائد 0
  wordFromMic = convertArabicWordToMath(arabicWord: wordFromMic);
  //after this line the operation become 0+0
  wordFromMic = wordFromMic.replaceAll(RegExp(r'\s+'), ' ').trim();
  //this line instead of any spaces, tabs or new lines(remember \s+(+ thing or more)) in ' ' to become the operation like this 0 + 0
  //if the operation was like this(" 0 + 0 ") so i use .trim() to become like this("0 + 0")
  return wordFromMic;
}
