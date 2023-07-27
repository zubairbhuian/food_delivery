import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_dbestech/routes/route_helper.dart';
import 'package:get/get.dart';

class RegestationController extends GetxController {
  bool obscureText = true;
  bool isLoaded = false;
  bool isButtonDisabled = true;
  var auth = FirebaseAuth.instance;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameControter = TextEditingController();
  final phoneControter = TextEditingController();
  final dateOfBirthControter = TextEditingController();

  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();
  final repasswordControter = TextEditingController();

  eamilRegestation() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailControter.text,
        password: passwordControter.text,
      );
      Get.offNamed(RouteHelper.initial);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

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
