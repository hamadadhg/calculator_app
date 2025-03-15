import 'package:calculator/core/styles/style_to_colors.dart';
import 'package:calculator/features/home/presentation/managers/cubits/theme/theme_mode_cubit.dart';
import 'package:calculator/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:calculator/features/home/presentation/views/widgets/custom_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeModeCubit>().state;
    //.watch because i use isDarkMode state in main.dart(inside builder), and i want always to update the state so .watch
    return Row(
      children: [
        const CustomRecord(),
        const Spacer(),
        CustomIconButton(
          onPressed: () => context.read<ThemeModeCubit>().toggleTheme(),
          //.read because inside any type method(without builder method) you should .read
          color:
              isDarkMode ? StyleToColors.whiteColor : const Color(0xffFFFF33),
          iconData: isDarkMode ? Icons.dark_mode : Icons.light_mode,
          percent: 0.045,
        ),
      ],
    );
  }
}
