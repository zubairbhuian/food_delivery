import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegestationController extends GetxController{
    bool obscureText = true;
  bool isLoaded = false;
  bool isButtonDisabled = true;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameControter = TextEditingController();
  final phoneControter = TextEditingController();
  final dateOfBirthControter = TextEditingController();

  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();
  final repasswordControter = TextEditingController();

  @override
  void onClose() {
    nameControter.dispose();
    phoneControter.dispose();
    dateOfBirthControter.dispose();
    emailControter.dispose();
    passwordControter.dispose();
    repasswordControter.dispose();
    super.onClose();
  }
}