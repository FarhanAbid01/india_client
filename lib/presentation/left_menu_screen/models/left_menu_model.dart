import 'package:get/get.dart';
import 'staggeredwhiteandblack_one_item_model.dart';
import 'listprofile_item_model.dart';

class LeftMenuModel {
  RxList<StaggeredwhiteandblackOneItemModel> staggeredwhiteandblackOneItemList =
      RxList.filled(4, StaggeredwhiteandblackOneItemModel());

  RxList<ListprofileItemModel> listprofileItemList =
      RxList.filled(3, ListprofileItemModel());
}
