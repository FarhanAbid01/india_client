import '../controller/payment_online_controller.dart';
import 'package:get/get.dart';

class PaymentOnlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentOnlineController());
  }
}
