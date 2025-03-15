import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeCubit extends Cubit<bool> {
  //bool state is consumes(take) little resource, but the ThemeData consumes big resource and your check is long state.brightness ==...
  ThemeModeCubit() : super(true);
  void toggleTheme() {
    emit(!state);
    //when the user click on icon mode so this method will trigger and you should emit state against state in the now time
  }
}
