import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key, required this.color, required this.text, required this.routeName})
      : super(key: key);
  final Color color;
  final String text;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: ()=>Navigator.pushNamed(context, routeName),
        child: SizedBox(
          width: 120,
          height: 70,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
