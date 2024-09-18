import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withOpacity(0.1),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search_rounded,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
