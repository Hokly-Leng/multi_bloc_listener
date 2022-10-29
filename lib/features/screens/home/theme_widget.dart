import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_listener/cores/theme.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = context.read<ChangeTheme>();
    return Material(
      color: Colors.amber,
      child: InkWell(
        onTap: () => changeTheme.changeTheme(),
        child: const SizedBox(
          width: 100,
          height: 50,
          child: Center(
              child: Text(
            'Change',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
