import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
      bool obscureText = true;
  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();

  @override
  void onClose() {

    emailControter.dispose();
    passwordControter.dispose();
    super.onClose();
  }
}
