import 'package:calculator/core/styles/style_to_texts.dart';
import 'package:calculator/features/home/presentation/managers/cubits/calc/calculator_cubit.dart';
import 'package:calculator/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTopSection extends StatelessWidget {
  const CustomTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        SizedBox(height: height * 0.02),
        const CustomAppBar(),
        SizedBox(height: height * 0.05),
        BlocBuilder<CalculatorCubit, String>(
          builder: (context, state) {
            return Container(
              height: height * 0.11,
              alignment: Alignment.bottomRight,
              //this alignment to put Container like operator app(in bottomRight not in center)
              child: SingleChildScrollView(
                //this widget to enable: 1: do vertical scroll, 2: make size equal to what is contain the child(child for Text widget), 3: use reverse to stay you in the bottom(i mean to stay with number(operations math) until if you going down to new line)
                reverse: true,
                child: Text(
                  state,
                  textAlign: TextAlign.right,
                  style: StyleToTexts.textStyle25.copyWith(
                    fontSize: height * 0.055,
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: height * 0.03),
      ],
    );
  }
}
