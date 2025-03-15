import 'package:calculator/core/styles/style_to_colors.dart';
import 'package:calculator/features/home/presentation/managers/cubits/theme/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Color colorToCalculatorHelper({
  required String text,
  required BuildContext context,
}) {
  final isDarkMode = context.watch<ThemeModeCubit>().state;
  //.watch because i use isDarkMode state in main.dart(inside builder), and i want always to update the state so .watch
  if (text == 'C' || text == '(' || text == ')') {
    return StyleToColors.greyColor;
  } else if (text == '%' ||
      text == '*' ||
      text == '/' ||
      text == '+' ||
      text == '-') {
    return StyleToColors.orangeColor;
  } else {
    return isDarkMode ? StyleToColors.blackColor : StyleToColors.whiteColor;
  }
}
