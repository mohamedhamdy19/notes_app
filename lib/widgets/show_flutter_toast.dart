import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showFlutterToast(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: const Color.fromARGB(255, 104, 103, 103),
      textColor: Colors.white,
      fontSize: 16.0);
}
