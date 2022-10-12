import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:saturn_flutter/core/utils/color_constant.dart';
import 'package:saturn_flutter/theme/app_style.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

import '../../core/utils/math_utils.dart';

class RazorPayScreen extends StatefulWidget {
  const RazorPayScreen({Key? key}) : super(key: key);

  @override
  State<RazorPayScreen> createState() => _RazorPayScreenState();
}

class _RazorPayScreenState extends State<RazorPayScreen> {
  Razorpay? _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    Get.back();
   Future.delayed(Duration(seconds: 1),(){ openCheckout();});
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay?.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_In7ZBG899z32d9',
      'amount': 99900,
      'name': 'Shaiq',
      'currency': 'INR',
      'description': 'Payment',
      'prefill': {'contact': "99999999999", 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay?.open(options);
    } catch (e) {
      debugPrintStack();
      log("exception:${e.toString()}");
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Get.snackbar("Success", response.paymentId.toString());

    log("___________${"SUCCESS: " + response.paymentId.toString()}");

  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Get.snackbar("ERROR: " , response.code.toString() + " - " + response.message.toString(),);
    log("___________${"ERROR: " + response.code.toString() + " - " + response.message.toString()}");

  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Get.snackbar( "EXTERNAL_WALLET: ",  response.walletName.toString());
    log("___________${"EXTERNAL_WALLET: " + response.walletName.toString()}");
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
