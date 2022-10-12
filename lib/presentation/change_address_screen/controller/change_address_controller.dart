import 'package:saturn_flutter/presentation/change_address_screen/models/change_address_item_model.dart';

import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/change_address_screen/models/change_address_model.dart';

class ChangeAddressController extends GetxController {
  Rx<ChangeAddressModel> changeAddressModelObj = ChangeAddressModel().obs;
  Rx<int> selectedAddress = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
