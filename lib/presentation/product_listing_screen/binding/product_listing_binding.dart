import '../controller/product_listing_controller.dart';
import 'package:get/get.dart';

class ProductListingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductListingController());
  }
}
