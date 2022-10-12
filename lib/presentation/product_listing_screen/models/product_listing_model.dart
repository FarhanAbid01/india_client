import 'package:get/get.dart';
import 'staggeredwhiteandblack_item_model.dart';
import 'gridwhiteandblack_four_item_model.dart';

class ProductListingModel {
  RxList<StaggeredwhiteandblackItemModel> staggeredwhiteandblackItemList =
      RxList.filled(4, StaggeredwhiteandblackItemModel());

  RxList<GridwhiteandblackFourItemModel> gridwhiteandblackFourItemList =
      RxList.filled(4, GridwhiteandblackFourItemModel());
}
