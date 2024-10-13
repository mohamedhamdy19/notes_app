import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withOpacity(0.1),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
