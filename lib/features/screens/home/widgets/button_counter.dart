import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({Key? key, required this.color, required this.icon, required this.func})
      : super(key: key);
  final Color color;
  final IconData icon;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(35),
      child: InkWell(
        onTap: func,
        child: SizedBox(
          width: 70,
          height: 100,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
