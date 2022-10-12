import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/product_listing_screen/models/product_listing_model.dart';

class ProductListingController extends GetxController {
  Rx<ProductListingModel> productListingModelObj = ProductListingModel().obs;
  Rx<int>  selectedTab=0.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
