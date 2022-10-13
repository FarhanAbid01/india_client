import 'dart:developer';

import 'package:saturn_flutter/presentation/cart_screen/cart_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/home_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/widgets/drawer_widget.dart';

import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class BaseView extends GetWidget<HomepageController> {
  List<IconData> iconsList = [
    Icons.other_houses_outlined,
    Icons.shopping_cart_outlined,
    Icons.circle_outlined,
    Icons.person_outline_outlined
  ];
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  final HomepageController homePagecontroller = Get.find();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: ColorConstant.whiteA700,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Obx(() => homePagecontroller.selectedBottomNavIndex.value == 0
              ? Container(
            width: size.width,
            margin: getMargin(
              left: 25,
              right: 25,
            ),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: (){
                    _key.currentState!.openDrawer();
                  },
                  child: CommonImageView(
                    svgPath: ImageConstant.imgGrid14X15,
                    height: getVerticalSize(
                      14.00,
                    ),
                    width: getHorizontalSize(
                      15.00,
                    ),
                  ),
                ),
                CommonImageView(
                  imagePath: ImageConstant.imgLogosatrun1,
                  height: getVerticalSize(
                    57.00,
                  ),
                ),
                CommonImageView(
                  svgPath: ImageConstant.imgSearch,
                  height: getSize(
                    17.00,
                  ),
                  width: getSize(
                    17.00,
                  ),
                ),
              ],
            ),
          )
              : SizedBox()),
        ),
        body: PageView(
          controller: pageController,
          children: [
            HomeScreen(),
            CartScreen(true),
          ],
        ),
        drawer: DrawerWidget(),
        bottomNavigationBar: Container(
          height: Get.height * .08,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.20),
                spreadRadius: 1,
                blurRadius: 15)
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(iconsList.length, (index) => tabs(index)),
          ),
        ),
      ),
    );
  }

  Widget tabs(int index) {
    return Obx(() => GestureDetector(
        onTap: () {
          homePagecontroller.selectedBottomNavIndex.value = index;
          pageController.jumpToPage(index);

        },
        child: Icon(
          iconsList[index],
          color: homePagecontroller.selectedBottomNavIndex.value == index
              ? ColorConstant.gray601
              : Colors.grey,
          size: 22,
        )));
  }
}