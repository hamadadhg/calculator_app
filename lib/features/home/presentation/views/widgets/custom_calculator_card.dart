import 'package:calculator/core/helpers/color_to_calculator_helper.dart';
import 'package:calculator/core/styles/style_to_texts.dart';
import 'package:flutter/material.dart';

class CustomCalculatorCard extends StatelessWidget {
  const CustomCalculatorCard({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap; //void Function()?
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorToCalculatorHelper(text: text, context: context),
          borderRadius: BorderRadius.circular(height * 0.03),
        ),
        child: Center(
          child: Text(
            text,
            style: StyleToTexts.textStyle18.copyWith(fontSize: height * 0.04),
          ),
        ),
      ),
    );
  }
}
