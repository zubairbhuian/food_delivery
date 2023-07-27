import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_dbestech/controllers/login_controller.dart';
import 'package:food_delivery_dbestech/pages/regester/regester.dart';
import 'package:food_delivery_dbestech/routes/route_helper.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../widgets/custom_appbar_shape.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColors.bgColorOne,
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      body: Stack(
        children: [
          Positioned(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Welcome Back!',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 34.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            'You will get best quality health care service with the low cost',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grayLite),
                            )),
                        const SizedBox(
                          height: 28,
                        ),
                        CustomTextField(
                          controller: controller.emailControter,
                          hintText: 'Email',
                          prefixIcon: const Icon(
                            Icons.email,
                            color: AppColors.textColorLite,
                            size: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GetBuilder<LoginController>(
                          builder: (controller) => CustomTextField(
                            controller: controller.passwordControter,
                            obscureText: controller.obscureText,
                            hintText: 'Password',
                            prefixIcon: const Icon(
                              Icons.lock,
                              // Icons.remove_red_eye,
                              color: AppColors.textColorLite,
                              size: 25,
                            ),
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
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          width: 100.sw,
                          child: GestureDetector(
                            child: const RegularText(
                              text: 'Forgot Password?',
                              textAlign: TextAlign.end,
                              color: AppColors.primary,
                            ),
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBtn(
                          onPressed: () async {
                            controller.eamilLogin();
                          },
                          title: 'Sign in',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  height: 60.h,
                  child: Center(
                    child: RichText(
                        text: TextSpan(
                            text: 'Don’t have an account?  ',
                            style: const TextStyle(
                                color: AppColors.black, fontSize: 15),
                            children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(RouteHelper.regestration);
                                },
                              text: ' Create new',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blue))
                        ])),
                  ),
                )
              ],
            ),
          ),
        ],
      ));

  AppBar _appBar() => AppBar(
      leading: const SizedBox(height: 10),
      elevation: 0.0,
      toolbarHeight: 130,
      backgroundColor: Colors.transparent,
      flexibleSpace: ClipPath(
        clipper: CustomAppbarShape(),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.primary, AppColors.secondary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dementia-Patients",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white),
                      )),
                  Text("Support To Home",
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ));
}
