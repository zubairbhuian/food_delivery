import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_dbestech/routes/route_helper.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
      bool obscureText = true;
  final emailControter = TextEditingController();
  final passwordControter = TextEditingController();

  
  eamilLogin()async{
try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailControter.text,
    password:passwordControter.text
  );
  Get.offNamed(RouteHelper.initial);
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }




  



  @override
  void onClose() {

    emailControter.dispose();
    passwordControter.dispose();
    super.onClose();
  }
}
