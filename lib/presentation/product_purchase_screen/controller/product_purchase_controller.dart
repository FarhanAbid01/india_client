import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/product_purchase_screen/models/product_purchase_model.dart';

class ProductPurchaseController extends GetxController {
  Rx<ProductPurchaseModel> productPurchaseModelObj = ProductPurchaseModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
