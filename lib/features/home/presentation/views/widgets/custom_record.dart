/*
import 'package:calculator/core/styles/style_to_colors.dart';
import 'package:calculator/features/home/data/services/microphone_calculator_service.dart';
import 'package:calculator/features/home/presentation/managers/cubits/calc/calculator_cubit.dart';
import 'package:calculator/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRecord extends StatefulWidget {
  const CustomRecord({super.key});

  @override
  State<CustomRecord> createState() => _CustomRecordState();
}

class _CustomRecordState extends State<CustomRecord> {
  final MicrophoneCalculatorService microphoneCalculatorService =
      MicrophoneCalculatorService();
  //create object that responsible in convert speech to text(operation math)
  @override
  void initState() {
    microphoneCalculatorService.initSpeech();
    //ensure the initSpeech is initialize before the Record is build
    super.initState();
  }

  void startListening() {
    microphoneCalculatorService.startListening(
      onResult: (recognizedText) {
        context.read<CalculatorCubit>().calculatorFromMicrophone(
          speechText: recognizedText,
        );
        //you assign to onResult the speech you say it(to check if the speech is recognize), and assign to method in cubit the text(onResult convert the speech to text) to calculate the operation math
      },
    );
  }

  void stopListening() {
    microphoneCalculatorService.stopListening(); //stop the recording on work
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.065,
      child: AspectRatio(
        aspectRatio: 2.5 / 2,
        child: Container(
          decoration: BoxDecoration(
            color: StyleToColors.littleGreyColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(height * 0.04),
              topRight: Radius.circular(height * 0.04),
              bottomRight: Radius.circular(height * 0.04),
            ),
          ),
          child: CustomIconButton(
            onPressed: startListening,
            onLongPress: stopListening,
            color: StyleToColors.white60Color,
            percent: 0.045,
            iconData: Icons.mic_none,
          ),
        ),
      ),
    );
  }
}
*/
