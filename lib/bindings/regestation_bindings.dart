import 'package:food_delivery_dbestech/controllers/regestation_controller.dart';
import 'package:get/get.dart';

class RegestrationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegestationController());
  }
}
