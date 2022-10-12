import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:saturn_flutter/presentation/cart_screen/cart_screen.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/home_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/widgets/drawer_widget.dart';
import 'package:saturn_flutter/presentation/left_menu_screen/widgets/listprofile_item_widget.dart';

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
  final CartController cartController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PersistentTabView(
      context,
      controller: homePagecontroller.persistantController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12, // Choose the nav bar style with this property.
    )
    );
  }
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      CartScreen(true),
      CartScreen(true),
      CartScreen(true),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.other_houses_outlined,
          // color: homePagecontroller.selectedBottomNavIndex.value == index
          //     ? ColorConstant.gray601
          //     : Colors.grey,
          size: 22,
        ),
        title: (""),
        activeColorPrimary: ColorConstant.gray601,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Stack(alignment: Alignment.center,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              // color: homePagecontroller.selectedBottomNavIndex.value == index
              //     ? ColorConstant.gray601
              //     : Colors.grey,
              size: 22,
            ),
           // Obx(() =>  Container(
           //    padding: EdgeInsets.all(5),
           //    margin: EdgeInsets.only(left: 20,bottom: 10),
           //    decoration: BoxDecoration(
           //        color: Colors.red,
           //        shape: BoxShape.circle
           //    ),
           //    child: Text(
           //      cartController.cartIDList.isNotEmpty?
           //      "${cartController.cartIDList.length}":
           //      "0",
           //      style: AppStyle.txtRobotoMedium14
           //          .copyWith(color: Colors.white,fontSize: 12),),
           //  ))
          ],
        ),
        title: (""),
        activeColorPrimary: ColorConstant.gray601,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.circle_outlined,
          // color: homePagecontroller.selectedBottomNavIndex.value == index
          //     ? ColorConstant.gray601
          //     : Colors.grey,
          size: 22,
        ),
        title: (""),
        activeColorPrimary: ColorConstant.gray601,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person_outline_outlined,
          // color: homePagecontroller.selectedBottomNavIndex.value == index
          //     ? ColorConstant.gray601
          //     : Colors.grey,
          size: 22,
        ),
        title: (""),
        activeColorPrimary: ColorConstant.gray601,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
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
