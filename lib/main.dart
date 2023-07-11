import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_dbestech/controllers/cart_controller.dart';
import 'package:food_delivery_dbestech/controllers/popular_product_controller.dart';
import 'package:food_delivery_dbestech/helper/dependencies.dart' as dep;
import 'package:food_delivery_dbestech/routes/route_helper.dart';
import 'package:get/get.dart';

import 'controllers/recommended_product_controller.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCardData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return ScreenUtilInit(
          
            builder: (context, child) => GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: Colors.teal,
                  ),
                  initialRoute: RouteHelper.getSplash(),
                  getPages: RouteHelper.routes,
                ));
      });
    });
  }
}
