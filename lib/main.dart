import 'package:calculator/core/utils/observer/simple_bloc_observer.dart';
import 'package:calculator/features/home/presentation/managers/cubits/calc/calculator_cubit.dart';
import 'package:calculator/features/home/presentation/managers/cubits/theme/theme_mode_cubit.dart';
import 'package:calculator/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CalculatorCubit()),
        BlocProvider(create: (context) => ThemeModeCubit()),
      ],
      child: const CalculatorApp(),
    ),
  );
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, bool>(
      builder: (context, isDarkMode) {
        //the name is isDarkMode instead of state
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: const HomeView(),
        );
      },
    );
  }
}
