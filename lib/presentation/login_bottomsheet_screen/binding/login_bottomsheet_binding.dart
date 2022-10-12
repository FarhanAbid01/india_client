import '../controller/login_bottomsheet_controller.dart';
import 'package:get/get.dart';

class LoginBottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginBottomsheetController());
  }
}
