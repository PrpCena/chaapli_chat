import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({required this.title, required this.onPressed, this.color});

  final String title;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: onPressed,
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              title,
            ),
          ),
        ));
  }
}
