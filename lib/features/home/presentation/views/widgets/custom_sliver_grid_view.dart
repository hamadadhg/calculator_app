import 'package:calculator/core/lists/list_to_text_calculator.dart';
import 'package:calculator/features/home/presentation/managers/cubits/calc/calculator_cubit.dart';
import 'package:calculator/features/home/presentation/views/widgets/custom_calculator_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: size.height * 0.012,
        crossAxisSpacing: size.width * 0.017,
      ),
      itemCount: listToTextCalculator.length,
      itemBuilder: (context, index) {
        String text = listToTextCalculator[index];
        return CustomCalculatorCard(
          text: listToTextCalculator[index],
          onTap: () {
            if (text == '=') {
              context.read<CalculatorCubit>().clickOnEqualButton();
            } else if (text == 'C') {
              context.read<CalculatorCubit>().clear();
            } else if ('+-*/%'.contains(text)) {
              //check if text(value button) contain on any this operator
              context.read<CalculatorCubit>().addOperator(operator: text);
            } else {
              context
                  .read<CalculatorCubit>()
                  .addFirstNumberOrAddNumberToPreviousNumber(number: text);
            }
          },
        );
      },
    );
  }
}
