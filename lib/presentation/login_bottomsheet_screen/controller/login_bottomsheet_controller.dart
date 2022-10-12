import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/login_bottomsheet_screen/models/login_bottomsheet_model.dart';

class LoginBottomsheetController extends GetxController {
  Rx<LoginBottomsheetModel> loginBottomsheetModelObj =
      LoginBottomsheetModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
