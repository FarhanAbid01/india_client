import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';
import 'package:saturn_flutter/presentation/change_address_screen/controller/change_address_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/baseview.dart';
import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/payment_online_screen/controller/payment_online_controller.dart';
import 'package:saturn_flutter/presentation/payment_screen/controller/payment_controller.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/controller/product_detail_controller.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail_screen.dart';
import 'core/app_export.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);

  // ignore: unused_local_variable
  Map<Permission, PermissionStatus> statuses = await [
    Permission.camera,
    Permission.contacts,
    Permission.storage,
  ].request();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ColorConstant.gray600,

    ));
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
     Get.put(ProductDetailController());
     Get.put(PaymentController());
     Get.put(HomepageController());
     Get.put(CartController());
     Get.put(ProductDetailController());
     Get.put(AddNewAddressController());
     Get.put(ChangeAddressController());
     Get.put(PaymentOnlineController());
     Get.put(PaymentController());
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(

          debugShowCheckedModeBanner: false,
          translations: AppLocalization(),
          locale: Get.deviceLocale, //for setting localization strings
          fallbackLocale: Locale('en', 'US'),
          title: 'saturn_flutter',
          initialBinding: InitialBindings(),
          initialRoute: AppRoutes.initialRoute,
          getPages: AppRoutes.pages,
          routes: {
              // When navigating to the "/" route, build the FirstScreen widget.
              "/first": (final context) => BaseView(),
              // When navigating to the "/second" route, build the SecondScreen widget.
              "/second": (final context) => ProductDetailUpdates(null),
            },
        );
      }
    );
  }
}
