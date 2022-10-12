import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';
import 'package:saturn_flutter/presentation/cart_screen/models/cart_detail_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:sizer/sizer.dart';

class DrawerWidget extends StatelessWidget {
  List<IconData> iconsList = [
    Icons.other_houses,
    Icons.shopping_cart,
    Icons.circle_outlined,
    Icons.person,
    Icons.favorite,
    Icons.timelapse_rounded,
    Icons.location_on_rounded,
    Icons.gps_fixed,
  ];
  List<String> titlesList = [
    "Home",
    "Blogs",
    "Cart",
    "Settings",
    "Wishlist",
    "Order History",
    "Manage addresses",
    "Track my Order",
  ];
  final CartController cartController = Get.find();
  final HomepageController homePagecontroller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  Column(
        children: [
          Container(
            height: Get.height*.18,
            width: Get.width,
            color: ColorConstant.gray601,
            padding: EdgeInsets.only(left: 3.w,top: 4.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(40),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgMusic65X65,
                    height: getSize(
                      50.00,
                    ),
                    width: getSize(
                      50.00,
                    ),
                  ),
                ),
                w4,
                Column(mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Doe",  style: AppStyle.txtRobotoMedium14
                        .copyWith(color: Colors.white),),
                    h0P8,
                    Text("johndoe@gmail.com",  style: AppStyle.txtRobotoMedium14
                        .copyWith(color: Colors.white),),
                  ],
                ),
                Spacer(),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 18,),
                Spacer(),
              ],
            ),
          ),
         h3,
         Column(
           children: List.generate(iconsList.length, (index) => tiles(iconsList[index],titlesList[index])),
         )

        ],
      ),
    );
  }
  Widget tiles(IconData icon,String title)
  {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 2.h,left: 5.w),
      child: Row(
        children: [
          Icon(icon,color: ColorConstant.gray601,),
          w5,
          Text(title,  style: AppStyle.txtRobotoMedium14
              .copyWith(color: ColorConstant.indigo900),),
          // title=="Cart" || title=="Wishlist"?   Container(
          //   padding: EdgeInsets.all(5),
          //   margin: EdgeInsets.only(left: 3.w),
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     shape: BoxShape.circle
          //   ),
          //   child: Text(
          //
          //     title=="Cart" && cartController.cartIDList.isNotEmpty?
          //     "${cartController.cartIDList.length}":
          //     title=="Wishlist" && homePagecontroller.whishlist.isNotEmpty?
          //     "${homePagecontroller.whishlist.length}":
          //     "0",
          //     style: AppStyle.txtRobotoMedium14
          //       .copyWith(color: Colors.white,fontSize: 12),),
          // ):SizedBox(),
        ],
      ),
    );
  }
}




