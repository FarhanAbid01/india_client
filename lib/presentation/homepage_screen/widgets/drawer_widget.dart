import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/update_address.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';
import 'package:saturn_flutter/presentation/cart_screen/models/cart_detail_model.dart';
import 'package:saturn_flutter/presentation/change_address_screen/change_address_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/order_history/order_history.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

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
  List<String> categoriesList = [
    "HAIR GROWTH AND HAIR CARE PRODUCTS",
    "BEARED GROWTH PRODUCTS",
    "PERFUME BOOSTERS",
    "WILLNESS",
    "SKIN",
  ];
  final CartController cartController = Get.find();
  final HomepageController homePagecontroller = Get.find();

  final AddNewAddressController addressController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
             children: List.generate(iconsList.length, (index) => tiles(iconsList[index],titlesList[index],index)),
           ),
            h5,

          Obx(()=>  Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      homePagecontroller.isShopByCatOpen.value=!homePagecontroller.isShopByCatOpen.value;
                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SHOP BY CATEGORY",style: TextStyle(
                            color: Colors.grey,fontSize: 12.sp
                          ),),
                          Icon(
                            homePagecontroller.isShopByCatOpen.value==true?
                            Icons.keyboard_arrow_down:
                            Icons.keyboard_arrow_right
                            ,color: Colors.indigo,)
                        ],
                      ),
                    ),
                  ),
                  h2,
                  homePagecontroller.isShopByCatOpen.value==false?SizedBox():
                  Column(
                    children: List.generate(categoriesList.length, (index) {
                      return GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: Get.width,
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          color:index%2==0? Colors.grey.withOpacity(.15):Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(flex:10,
                                child: Text(categoriesList[index],
                                  maxLines: 2,
                                  style: TextStyle(
                                color: Colors.black,fontSize: 10.sp,
                                ),),
                              ),
                              Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black,size:16))
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            )),
            h5,

          ],
        ),
      ),
    );
  }
  Widget tiles(IconData icon,String title,int index)
  {
    return  GestureDetector(
      onTap: () async {
        log("____________HERE");
        switch(index)
        {
          case 0:
            homePagecontroller.selectedBottomNavIndex.value=0;
            Get.back();
            break;
          case 1:
            launchUrl(Uri.parse(
                "https://prex-prex-prex.myshopify.com/blogs"));
            break;
          case 2:
            homePagecontroller.selectedBottomNavIndex.value=1;
            Get.back();
            break;
          case 5:
            Get.to(OrderHistory());
            break;
          case 6:
            {
             var snapshot=await addressController.userInfoAddresses(Constant.accessToken);
              var userInfo = snapshot as AllUserInfo;

             Get.to(ChangeAddressScreen(userInfo.data?.customer?.addresses??Addresses()))?.then((value) {
               Get.forceAppUpdate();
             });
            }
            break;

          default:
            homePagecontroller.selectedBottomNavIndex.value=0;

        }
      },
      child: Padding(
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
      ),
    );
  }
}




