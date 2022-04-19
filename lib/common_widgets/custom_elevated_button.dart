import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {required this.child,
      required this.onPressed,
      this.color: Colors.white,
      this.height: 50.0});
  final Widget child;
  final VoidCallback? onPressed;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: Size.fromHeight(40),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
