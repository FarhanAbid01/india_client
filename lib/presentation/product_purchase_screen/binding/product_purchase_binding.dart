import '../controller/product_purchase_controller.dart';
import 'package:get/get.dart';

class ProductPurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPurchaseController());
  }
}
