import 'package:captaionshop/context/State.dart';
import 'package:get/get.dart';

class RouteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyStateController());
  }
}
