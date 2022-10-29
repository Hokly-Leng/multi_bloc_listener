import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_listener/cores/counter.dart';
import 'package:multi_bloc_listener/cores/theme.dart';
import 'package:multi_bloc_listener/features/screens/home/data_widget.dart';
import 'package:multi_bloc_listener/features/screens/home/theme_widget.dart';
import 'package:multi_bloc_listener/features/screens/home/widgets/button_counter.dart';
import 'package:multi_bloc_listener/features/screens/home/widgets/button_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counter = context.read<CounterCubit>();
    ChangeTheme change = context.read<ChangeTheme>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<CounterCubit, int>(
            bloc: counter,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(milliseconds: 400),
                  content: Text('ShoWing Snackbar'),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current >= 5) {
                return true;
              } else {
                return false;
              }
            },
          ),
          BlocListener<ChangeTheme, bool>(
            bloc: change,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(milliseconds: 400),
                  content: state == true
                      ? const Text('Change Theme Light')
                      : const Text('Change Theme Dark'),
                ),
              );
            },
          ),
        ],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCounter(
                  color: Colors.amber,
                  icon: Icons.remove,
                  func: () => counter.decrement(),
                ),
                const DataWidget(),
                ButtonCounter(
                  color: Colors.amber,
                  icon: Icons.add,
                  func: () => counter.increment(),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ThemeWidget(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ButtonScreen(
                  color: Colors.indigo,
                  text: 'Info',
                  routeName: '/info',
                ),
                ButtonScreen(
                  color: Colors.orange,
                  text: 'Setting',
                  routeName: '/setting',
                ),
                ButtonScreen(
                  color: Colors.teal,
                  text: 'Contact',
                  routeName: '/contact',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
