import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomAddButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool isLoading;
  const CustomAddButton(
      {super.key, required this.onPressed, this.isLoading = false});

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
            onPressed: onPressed,
            child: isLoading
                ? const SizedBox(
                    height: 26,
                    width: 26,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
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
