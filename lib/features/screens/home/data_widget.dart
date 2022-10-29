import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_listener/cores/counter.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counterCubit = context.read<CounterCubit>();
    return Material(
      color: Colors.amber,
      child: SizedBox(
        height: 100,
        width: 200,
        child: Center(
          child: BlocBuilder(
            bloc: counterCubit,
            builder: (context, state) {
              return Text('$state', style: const TextStyle(color: Colors.white, fontSize: 50),);
            },
          ),
          // child: BlocConsumer(
          //   bloc: counterCubit,
          //   builder: (context, state) => Text(
          //     '$state',
          //     style: const TextStyle(color: Colors.white, fontSize: 50),
          //   ),
          //   listener: (context, state) {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       SnackBar(
          //         duration: const Duration(milliseconds: 400),
          //         content: Text('Showing Snack bar $state'),
          //       ),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
