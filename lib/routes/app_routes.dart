import 'package:saturn_flutter/presentation/left_menu_screen/left_menu_screen.dart';
import 'package:saturn_flutter/presentation/left_menu_screen/binding/left_menu_binding.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail.dart';
import 'package:saturn_flutter/presentation/splash_screen/splash_screen.dart';
import 'package:saturn_flutter/presentation/splash_screen/binding/splash_binding.dart';
import 'package:saturn_flutter/presentation/login_bottomsheet_screen/login_bottomsheet_screen.dart';
import 'package:saturn_flutter/presentation/login_bottomsheet_screen/binding/login_bottomsheet_binding.dart';
import 'package:saturn_flutter/presentation/login_screen/login_screen.dart';
import 'package:saturn_flutter/presentation/login_screen/binding/login_binding.dart';
import 'package:saturn_flutter/presentation/signup_screen/signup_screen.dart';
import 'package:saturn_flutter/presentation/signup_screen/binding/signup_binding.dart';
import 'package:saturn_flutter/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:saturn_flutter/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:saturn_flutter/presentation/homepage_screen/baseview.dart';
import 'package:saturn_flutter/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:saturn_flutter/presentation/product_listing_screen/product_listing_screen.dart';
import 'package:saturn_flutter/presentation/product_listing_screen/binding/product_listing_binding.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/binding/product_detail_binding.dart';
import 'package:saturn_flutter/presentation/product_purchase_screen/product_purchase_screen.dart';
import 'package:saturn_flutter/presentation/product_purchase_screen/binding/product_purchase_binding.dart';
import 'package:saturn_flutter/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:saturn_flutter/presentation/wishlist_screen/binding/wishlist_binding.dart';
import 'package:saturn_flutter/presentation/cart_screen/cart_screen.dart';
import 'package:saturn_flutter/presentation/cart_screen/binding/cart_binding.dart';
import 'package:saturn_flutter/presentation/checkout_screen/checkout_screen.dart';
import 'package:saturn_flutter/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:saturn_flutter/presentation/change_address_screen/change_address_screen.dart';
import 'package:saturn_flutter/presentation/change_address_screen/binding/change_address_binding.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:saturn_flutter/presentation/payment_screen/payment_screen.dart';
import 'package:saturn_flutter/presentation/payment_screen/binding/payment_binding.dart';
import 'package:saturn_flutter/presentation/payment_online_screen/payment_online_screen.dart';
import 'package:saturn_flutter/presentation/payment_online_screen/binding/payment_online_binding.dart';
import 'package:saturn_flutter/presentation/order_placed_screen/order_placed_screen.dart';
import 'package:saturn_flutter/presentation/order_placed_screen/binding/order_placed_binding.dart';
import 'package:saturn_flutter/presentation/apply_coupon_screen/apply_coupon_screen.dart';
import 'package:saturn_flutter/presentation/apply_coupon_screen/binding/apply_coupon_binding.dart';
import 'package:saturn_flutter/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:saturn_flutter/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../widgets/botton_nar_bar.dart';

class AppRoutes {
  static String leftMenuScreen = '/left_menu_screen';


  static String splashScreen = '/splash_screen';

  static String loginBottomsheetScreen = '/login_bottomsheet_screen';

  static String loginScreen = '/login_screen';

  static String signupScreen = '/signup_screen';

  static String resetPasswordScreen = '/reset_password_screen';

  static String homepageScreen = '/homepage_screen';

  static String productListingScreen = '/product_listing_screen';

  static String productDetailScreen = '/product_detail_screen';

  static String productPurchaseScreen = '/product_purchase_screen';

  static String wishlistScreen = '/wishlist_screen';

  static String cartScreen = '/cart_screen';

  static String checkoutScreen = '/checkout_screen';

  static String changeAddressScreen = '/change_address_screen';

  static String addNewAddressScreen = '/add_new_address_screen';

  static String paymentScreen = '/payment_screen';

  static String paymentOnlineScreen = '/payment_online_screen';

  static String orderPlacedScreen = '/order_placed_screen';

  static String applyCouponScreen = '/apply_coupon_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: leftMenuScreen,
      page: () => LeftMenuScreen(),
      bindings: [
        LeftMenuBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginBottomsheetScreen,
      page: () => LoginBottomsheetScreen(),
      bindings: [
        LoginBottomsheetBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => BaseView(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: productListingScreen,
      page: () => ProductListingScreen(),
      bindings: [
        ProductListingBinding(),
      ],
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailUpdates(null),
      bindings: [
        ProductDetailBinding(),
      ],
    ),
    GetPage(
      name: productPurchaseScreen,
      page: () => ProductPurchaseScreen(),
      bindings: [
        ProductPurchaseBinding(),
      ],
    ),
    GetPage(
      name: wishlistScreen,
      page: () => WishlistScreen(),
      bindings: [
        WishlistBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(false),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    // GetPage(
    //   name: changeAddressScreen,
    //   page: () => ChangeAddressScreen(),
    //   bindings: [
    //     ChangeAddressBinding(),
    //   ],
    // ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(null,null),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: paymentOnlineScreen,
      page: () => PaymentOnlineScreen(),
      bindings: [
        PaymentOnlineBinding(),
      ],
    ),
    GetPage(
      name: orderPlacedScreen,
      page: () => OrderPlacedScreen(),
      bindings: [
        OrderPlacedBinding(),
      ],
    ),
    GetPage(
      name: applyCouponScreen,
      page: () => ApplyCouponScreen(),
      bindings: [
        ApplyCouponBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginBottomsheetScreen(),
      bindings: [
        LoginBottomsheetBinding(),
      ],
    ),

  ];
}
