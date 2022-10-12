import '../controller/left_menu_controller.dart';
import 'package:get/get.dart';

class LeftMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeftMenuController());
  }
}
