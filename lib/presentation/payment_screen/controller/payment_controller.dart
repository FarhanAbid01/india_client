import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/payment_screen/models/payment_model.dart';

class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  Rx<int> selectedPaymentMethod=0.obs;
  Rx<int> selectedPaymentTypes=0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
