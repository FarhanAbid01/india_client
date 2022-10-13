import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saturn_flutter/core/utils/color_constant.dart';
import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/theme/app_style.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

import '../../core/app_export.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  List<OrderHistoryModel> orderHistory=[
    OrderHistoryModel(historyStatus: 0,deliveryStatus: "Shipped", orderId: "21900",price: 699,qty: 1),
    OrderHistoryModel(historyStatus: 1,deliveryStatus: "Delivered", orderId: "21901",price: 800,qty: 3),
    OrderHistoryModel(historyStatus: 1,deliveryStatus: "Delivered", orderId: "21902",price: 100,qty: 10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
              "Order History",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoBold18
                  .copyWith(letterSpacing: 0.50,fontSize: 22)),
          leading:
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Padding(
                  padding:  EdgeInsets.only(left: Get.width*.06),
                  child: Icon(Icons.arrow_back_ios,color: ColorConstant.indigo900,size:20)
              )),

        ),

        body:Padding(
          padding:  EdgeInsets.symmetric(horizontal: Get.width*.05,vertical: Get.height*.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Order (${orderHistory.where((element) => element.historyStatus==0).length})"
                ,style: TextStyle(
                  color: ColorConstant.indigo900,
                  fontSize: 15,
                fontWeight: FontWeight.w500
              ),),
              h1,
              Column(
                children: List.generate(orderHistory.where((element) => element.historyStatus==0).length, (index) {
                  OrderHistoryModel obj=orderHistory.where((element) => element.historyStatus==0).toList()[index];
                  return
                    orderCards(obj);
                }),
              ),
              h2,
              if(orderHistory.where((element) => element.historyStatus==1).isNotEmpty)

            ... [ Text(
                "Previous Orders (${orderHistory.where((element) => element.historyStatus==1).length})"
                ,style: TextStyle(
                  color: ColorConstant.indigo900,
                  fontSize: 15,
                  fontWeight: FontWeight.w500

              ),),
              h1,
              Column(
                children: List.generate(orderHistory.where((element) => element.historyStatus==1).length, (index) {
                  OrderHistoryModel obj=orderHistory.where((element) => element.historyStatus==1).toList()[index];

                  return
                    orderCards(obj);
                }),
              ),]else SizedBox()
            ],
          ),
        )

    );
  }
  Widget orderCards(OrderHistoryModel obj)
  {
    return
      Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      padding: EdgeInsets.symmetric(horizontal: Get.width*.05,vertical: Get.height*.02),
      decoration: AppDecoration.outlineBlack9001e.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(

        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color:
                      ColorConstant.pink100.withOpacity(.40),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.shopping_bag,
                        color: ColorConstant.gray600, size: 22),
                  ),
                  w5,
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order ID: ${obj.orderId}",style: TextStyle(
                          color: ColorConstant.indigo900,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),),
                      h0P8,
                      Text("Rs. ${obj.price}    Qty:${obj.qty}",style: TextStyle(
                          color: ColorConstant.indigo900,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ],
              ),

              Container(
                width: Get.width*.22,
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: obj.deliveryStatus=="Shipped"?
                    Colors.blue.withOpacity(.20):
                    Colors.green.withOpacity(.20),
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text("${obj.deliveryStatus}",style: TextStyle(
                      color:
                      obj.deliveryStatus=="Shipped"?
                      Colors.blue:
                      Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),),
                ),
              )
            ],
          ),
          h3,
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomButton(
                    onTap: ()  {

                    },
                    width: 326,
                    text:"Order Details",
                    variant: ButtonVariant.FillPink101),
              ),
              w2,
              Expanded(
                child: CustomButton(
                    onTap: ()  {

                    },
                    width: 326,
                    text:  "Track"),
              ),
            ],
          )
        ],
      ),

    );

  }
}

class OrderHistoryModel
{
  String? deliveryStatus;
  int? historyStatus;
  String? orderId;
  double? price;
  int? qty;

  OrderHistoryModel(
      {this.deliveryStatus,
      this.historyStatus,
      this.orderId,
      this.price,
      this.qty});
}