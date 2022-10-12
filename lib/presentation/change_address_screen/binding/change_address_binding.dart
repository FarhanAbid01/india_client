import '../controller/change_address_controller.dart';
import 'package:get/get.dart';

class ChangeAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeAddressController());
  }
}
