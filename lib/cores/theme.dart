import 'package:bloc/bloc.dart';

class ChangeTheme extends Cubit<bool> {
  ChangeTheme() : super(true);

  void changeTheme() => emit(!state);
}
