// import 'package:calculator/core/helpers/finish_ensure_from_two_convert_helper.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:function_tree/function_tree.dart';

// class CalculatorCubit extends Cubit<String> {
//   //i don't need to state file and this don't need to network, my state is String(the return is text always)
//   CalculatorCubit() : super('0');
//   //initial value is 0
//   void addFirstNumberOrAddNumberToPreviousNumber({required String number}) {
//     if (state == '0') {
//       //state like state.brightness, so this state connect with cubit state(exactly it's she)
//       //example: the initial state is 0 so you click on 5 so will put 5 instead of 0
//       emit(number);
//     } else {
//       emit(state + number);
//       //state it's mean the previous number you clicked on it and number it's mean new number you click on it now
//       //in previous you clicked 5 and now you click on 2 so will put 52
//     }
//   }

//   void addOperator({required String operator}) {
//     //this method to add operator(+, -, *, /, and % just)
//     if ('+-*/%'.contains(state[state.length - 1])) {
//       return;
//       //check this String('+-*/%' all String or just one letter or..) contain in the last letter, i mean you clicked on + and again click now on - so this if check if the last letter contain on any operators so don't add a new click operator so this if don't integrate between ++
//     } else {
//       emit(state + operator);
//       //return previous state with new click
//     }
//   }

//   void clickOnEqualButton() {
//     //this method just enable you to click on equal button and send the state(previous all state) to calculateExpression method to calculate the operation math
//     try {
//       final result = calculateExpression(expression: state);
//       //if operation math is calculate so will send the result for this operation
//       emit(result);
//     } catch (e) {
//       //if happen any problem in operation math(like 5+ the operation not complete) so will send error
//       emit('Error: the operation math not complete');
//     }
//   }

//   void clear() {
//     //when you click on C button will delete all thing
//     emit('0');
//   }

//   void calculatorFromMicrophone({required String speechText}) {
//     String takeTheFinishOperation = finishEnsureFromTwoConvertHelper(
//       wordFromMic: speechText,
//     ); //you send your speech from mic to this function(finishEns...)
//     try {
//       final result = calculateExpression(expression: takeTheFinishOperation);
//       emit(result); //display the result from this operation
//     } catch (e) {
//       emit('Error: this speech\'s invalid'); //example: hello plus world
//     }
//   }

//   String calculateExpression({required String expression}) {
//     //this expression will calculate the operation math and convert the result to String(becuase i put the all thing Text widget)
//     try {
//       expression = expression.replaceAll('×', '*');
//       //in mic know the x is multiplication so in calculate(you click on equal to show the result) so instead of x in * because in programming languages the * is multiplication
//       final result = expression.interpret();
//       //interpret calculate the opereation math so will asign to result variable the result for this operation math
//       return result.toString();
//     } catch (e) {
//       return 'Error: you\'re operatoin not correct like(10/0, 5+ or you say thing not found or not correct) so there is no answer}';
//     }
//   }
// }
