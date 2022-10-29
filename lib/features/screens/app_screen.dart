import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_listener/cores/counter.dart';
import 'package:multi_bloc_listener/cores/routes.dart';
import 'package:multi_bloc_listener/cores/theme.dart';

class AppScreen extends StatelessWidget {
  AppScreen({super.key});
  final ChangeTheme changeTheme = ChangeTheme();
  final CounterCubit counterCubit = CounterCubit();
  final routes = MyRoutes();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChangeTheme>(
          create: (context) => changeTheme,
        ),
        BlocProvider<CounterCubit>(create: (context) => counterCubit),
      ],
        child: BlocBuilder<ChangeTheme, bool>(
          bloc: changeTheme,
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo Multi Bloc Listener',
              theme: state == true ? ThemeData.light() : ThemeData.dark(),
              initialRoute: '/',
              onGenerateRoute: routes.onRoute,
            );
          },
        ),
    );
  }
}
