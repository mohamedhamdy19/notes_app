import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              "Add",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          )),
    );
  }
}
