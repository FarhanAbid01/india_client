import 'package:get/get.dart';
import 'sliderfoamingfacewa_item_model.dart';
import 'product_page_item_model.dart';

class ProductDetailModel {
  RxList<SliderfoamingfacewaItemModel> sliderfoamingfacewaItemList =
      RxList.filled(4, SliderfoamingfacewaItemModel());

  RxList<ProductPageItemModel> productPageItemList =
      RxList.filled(2, ProductPageItemModel());
}
