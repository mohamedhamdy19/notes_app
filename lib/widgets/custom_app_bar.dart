import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 24, color: Colors.white)),
        CustomSearchButton(icon: icon)
      ],
    );
  }
}
