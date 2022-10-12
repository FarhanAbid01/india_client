import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/left_menu_screen/models/left_menu_model.dart';

class LeftMenuController extends GetxController {
  Rx<LeftMenuModel> leftMenuModelObj = LeftMenuModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
