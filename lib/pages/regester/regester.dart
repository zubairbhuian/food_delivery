import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_dbestech/controllers/login_controller.dart';
import 'package:food_delivery_dbestech/controllers/regestation_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../widgets/custom_appbar_shape.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class RegestrationView extends StatelessWidget {
  const RegestrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColors.bgColorOne,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 130,
          backgroundColor: Colors.transparent,
          leading: Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
                onPressed: () {
                  Get.back();
                },
              )),
          flexibleSpace: ClipPath(
            clipper: CustomAppbarShape(),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create Account",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white),
                      )),
                  Text("Enter info registration",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white),
                      )),
                ],
              ),
            ),
          )),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.all(25),
            child: GetBuilder<RegestationController>(
              builder: (controller) => Form(
                key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 0),
                        child: const RegularText(
                          text: 'Full Name',
                          color: Color(0xff8E9195),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.nameControter,
                      keyboardType: TextInputType.name,
                      hintText: ' Type Name',
                      padding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      validator: (String? value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)")
                                .hasMatch(value)) {
                          return 'Enter your Full Name';
                        }
                        return null;
                      },
                    ),
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Phone',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.phoneControter,
                      keyboardType: TextInputType.phone,
                      hintText: 'Type Phone',
                      padding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      // validator: (String? value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value)) {
                      //     return 'Enter your valid Phone Number';
                      //   }
                      //   return null;
                      // },
                    ),
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: const EdgeInsets.only(bottom: 5, top: 20),
                        child: RegularText(
                          text: 'Email',
                          color: const Color(0xff8E9195),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomTextField(
                      controller: controller.emailControter,
                      keyboardType: TextInputType.emailAddress,
                      hintText: ' Type Email',
                      padding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      validator: (String? value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                .hasMatch(value)) {
                          return 'Enter your valid Email';
                        }
                        return null;
                      },
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: const EdgeInsets.only(bottom: 5, top: 20),
                      child: RegularText(
                        text: 'Password',
                        color: const Color(0xff8E9195),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomTextField(
                      controller: controller.passwordControter,
                      obscureText: controller.obscureText,
                      keyboardType: TextInputType.number,
                      hintText: ' Type password',
                      padding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Create a new password";
                        } else if (value.length < 6) {
                          return "Your minimum password should be 6 ";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: const EdgeInsets.only(bottom: 5, top: 20),
                      child: RegularText(
                        text: 'Re-password',
                        color: const Color(0xff8E9195),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomTextField(
                      controller: controller.repasswordControter,
                      obscureText: controller.obscureText,
                      keyboardType: TextInputType.number,
                      hintText: 'Password',
                      padding: EdgeInsets.only(
                          bottom: 15.5, top: 15.5, left: 25.w, right: 25.w),
                      suffixIcon: controller.obscureText == true
                          ? IconButton(
                              onPressed: () {
                                controller.obscureText = false;
                                controller.update();
                              },
                              icon: const Icon(
                                Icons.visibility_off,
                                color: AppColors.textColorLite,
                              ))
                          : IconButton(
                              onPressed: () {
                                controller.obscureText = true;
                                controller.update();
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                              )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Re-password";
                        } else if (controller.repasswordControter.text !=
                            controller.passwordControter.text) {
                          return "Password isnot match";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomBtn(
                      title: 'Sign Up',
                      onPressed: () async {
                        if (controller.formKey.currentState!.validate()) {
                          // controller.handralRegester();
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(height: 40.h),
        SizedBox(
          height: 50,
          child: Center(
            child: RichText(
                text: TextSpan(
                    text: 'Already have an account?  ',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 143, 143, 143),
                        fontSize: 15),
                    children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.back();
                        },
                      text: 'Log in',
                      style: const TextStyle(color: AppColors.primary))
                ])),
          ),
        )
      ]));
}
