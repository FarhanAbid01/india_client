import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/order_placed_screen/models/order_placed_model.dart';

class OrderPlacedController extends GetxController {
  Rx<OrderPlacedModel> orderPlacedModelObj = OrderPlacedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
