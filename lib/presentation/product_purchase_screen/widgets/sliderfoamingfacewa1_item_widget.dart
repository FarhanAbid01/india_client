import '../controller/product_purchase_controller.dart';
import '../models/sliderfoamingfacewa1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class Sliderfoamingfacewa1ItemWidget extends StatelessWidget {
  Sliderfoamingfacewa1ItemWidget(this.sliderfoamingfacewa1ItemModelObj);

  Sliderfoamingfacewa1ItemModel sliderfoamingfacewa1ItemModelObj;

  var controller = Get.find<ProductPurchaseController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonImageView(
        imagePath: ImageConstant.imgFoamingfacewa277X375,
        height: getVerticalSize(
          277.00,
        ),
        width: getHorizontalSize(
          375.00,
        ),
      ),
    );
  }
}
