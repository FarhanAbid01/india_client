import '../controller/product_detail_controller.dart';
import '../models/sliderfoamingfacewa_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class SliderfoamingfacewaItemWidget extends StatelessWidget {
  SliderfoamingfacewaItemWidget(this.sliderfoamingfacewaItemModelObj);

  String sliderfoamingfacewaItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: getPadding(
          right: 73,
        ),
        child: CommonImageView(
          url: sliderfoamingfacewaItemModelObj,
          height: getVerticalSize(
            164.00,
          ),
          width: getHorizontalSize(
            229.00,
          ),
        ),
      ),
    );
  }
}
