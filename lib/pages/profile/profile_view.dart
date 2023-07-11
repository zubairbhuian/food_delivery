import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_dbestech/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../widgets/custom_text.dart';

class ProfileView extends GetView<LoginController> {
  const ProfileView({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      CircleAvatar(
                        radius: 40.r,
                        backgroundColor: AppColors.primary,
                        child: Icon(
                                Icons.person,
                                size: 35.w,
                              )
                           ,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      RegularText(
                        text: 'User name'
                         ,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RegularText(
                        text:'User name',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 120.w,
                        child: ElevatedButton(
                            onPressed:  () {
                                    // controller.userLogout();
                                  },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary),
                            child:  const Text(
                                    'Log Out',
                                    style: TextStyle(color: AppColors.white),
                                  )),
                      )
                    ],
                  ),
                ),
              ));
  }
}
