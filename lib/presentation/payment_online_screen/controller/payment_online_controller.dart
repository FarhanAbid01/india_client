import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/payment_online_screen/models/payment_online_model.dart';

class PaymentOnlineController extends GetxController {
  Rx<PaymentOnlineModel> paymentOnlineModelObj = PaymentOnlineModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
