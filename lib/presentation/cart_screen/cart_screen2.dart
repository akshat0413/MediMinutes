import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/order_place/binding/order_place_binding.dart';
import 'package:mediminutes/presentation/order_place/order_place_screen.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/cart_controller.dart';

class CartScreen2 extends GetWidget<CartController> {
  const CartScreen2({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildHeader(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            top: 10.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.location_pin,
                      size: 25.h,
                    ),
                    SizedBox(width: 7.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver to Home (380001)",
                          style: TextStyle(
                              fontSize: 13.h,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "B 204, Nandavan Colony, Bareilly",
                          style: TextStyle(
                            fontSize: 12.h,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "CHANGE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                _buildCartItem(),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Coupons & Offer",
                    style: TextStyle(
                        fontSize: 20.h,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                _buildCouponSection(),
                SizedBox(
                  height: 50.h,
                ),
                _buildBillSection(),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildActionButtons(),
      ),
    );
  }

  ///Section Widget
  PreferredSizeWidget _buildHeader() {
    return CustomAppBar(
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftblack90001,
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarTitle(
        text: "lbl_cart".tr,
      ),
      styleType: Style.bgFillGreen200,
    );
  }

  ///Section Widget
  Widget _buildCartItem() {
    int quantity = 1; // Initial quantity

    return Card(
      elevation: 5,
      child: Container(
        height: 390.h,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Divider(
                      color: const Color.fromARGB(255, 40, 121, 43),
                    ),
                  ),
                  Text(
                    "OFFER ITEMS".tr,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 40, 121, 43),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Flexible(
                      child: Divider(
                    color: const Color.fromARGB(255, 40, 121, 43),
                  )),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.white,
                    theme.colorScheme.primary,
                  ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                ),
                height: 270.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 25.h,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBuyParacetamol,
                              width: 70.h,
                              height: 90.h,
                            ),
                            SizedBox(width: 15.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dolo Paracetamol 650mg \nStrip of 15 Tablets',
                                  style: TextStyle(
                                      fontSize: 15.fSize,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 13.h),
                                Text(
                                  "15 Tablets(s) in Strip",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(height: 15.h),
                                Row(
                                  children: [
                                    Text(
                                      'MRP ₹150* ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.fSize,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 120.h,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.green,
                                      size: 30.h,
                                    )
                                  ],
                                ),
                                SizedBox(height: 14.h),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 4,
                        child: SizedBox(
                          width: 105,
                          height: 35.h,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  theme.colorScheme.primary,
                                  Colors.white
                                ])),
                            child: _buildQuantitySelector(quantity,
                                (int newQuantity) {
                              quantity = newQuantity;
                            }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: const Color.fromARGB(255, 40, 121, 43),
                                size: 25.h,
                              ),
                              Text(
                                "Delivery by ",
                                style: TextStyle(fontSize: 13.fSize),
                              ),
                              Text(
                                "Tomorrow, before 10:00 pm ",
                                style: TextStyle(
                                    fontSize: 14.fSize,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                  child: Divider(
                color: const Color.fromARGB(255, 40, 121, 43),
              )),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "Add More items",
                      style: TextStyle(color: Colors.black, fontSize: 17.h),
                    ),
                  ),
                  SizedBox(
                    width: 170.h,
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.green,
                    size: 25.h,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCouponSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h, right: 20.h),
          child: Card(
            shadowColor: Colors.green,
            elevation: 10.h,
            child: Container(
              height: 50.h,
              child: Row(children: [
                SizedBox(
                  width: 10.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCoupon,
                  height: 35.h,
                ),
                SizedBox(
                  width: 15.h,
                ),
                Text(
                  "Apply coupon",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.fSize,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 120.h,
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 25.h,
                  color: Colors.green,
                )
              ]),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Card(
          elevation: 10,
          shadowColor: Colors.green,
          child: Container(
            height: 170.h,
            width: 340,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Best Coupon For You",
                    style: TextStyle(fontSize: 12.fSize),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flat 30% OFF",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "Add items worth ₹200 more \nto avail the benefit",
                            style: TextStyle(
                                color: Colors.green, fontSize: 12.fSize),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Code: ",
                                style: TextStyle(fontSize: 14.fSize),
                              ),
                              Text(
                                "30PHARMA",
                                style: TextStyle(
                                    fontSize: 14.fSize,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: 40.h,
                              ),
                              Card(
                                elevation: 3,
                                child: Container(
                                  height: 35.h,
                                  width: 100.h,
                                  color: Colors.green,
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Text(
                                      "Apply Coupon",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11.fSize),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 150.h),
                  //   child:
                  // )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        )
      ],
    );
  }

  ///Section Widget
  Widget _buildBillSection() {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h),
      child: Card(
        elevation: 5,
        shadowColor: Colors.green,
        child: Container(
          height: 370.h,
          width: 350.h,
          child: Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bill Summary",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.fSize,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text(
                      "MRP",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 200.h,
                    ),
                    Text(
                      "₹75.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Flexible(
                    child: Divider(
                      color: const Color.fromARGB(255, 40, 121, 43),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 140.h,
                    ),
                    Text(
                      "₹40.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Card(
                  shadowColor: Colors.green,
                  elevation: 2.h,
                  child: Container(
                    height: 60.h,
                    child: Row(children: [
                      SizedBox(
                        width: 10.h,
                      ),
                      Icon(
                        Icons.delivery_dining,
                        size: 30.h,
                        color: const Color.fromARGB(255, 22, 99, 25),
                      ),
                      SizedBox(
                        width: 4.h,
                      ),
                      Text(
                        "Free delivery obove ₹600.00 MRP",
                        style: TextStyle(
                            fontSize: 11.fSize, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 25.h,
                        color: Colors.green,
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "Plateform Fee",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 130.h,
                    ),
                    Text(
                      "₹5.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Flexible(
                    child: Divider(
                      color: const Color.fromARGB(255, 40, 121, 43),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Amount to be paid",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 70.h,
                    ),
                    Text(
                      "₹120.00",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.fSize),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuantitySelector(int quantity, Function(int) onQuantityChanged) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.remove,
            color: Colors.green,
            size: 20.h,
          ),
          onPressed: () {
            if (quantity > 1) {
              onQuantityChanged(quantity - 1);
            }
          },
        ),
        Text(
          '$quantity',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.green,
            size: 20.h,
          ),
          onPressed: () {
            onQuantityChanged(quantity + 1);
          },
        ),
      ],
    );
  }

  ///Section Widget
  Widget _buildActionButtons() {
    return Card(
      elevation: 10,
      child: Container(
        height: 70.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 20.h,
              blurRadius: 10.h,
              offset: Offset(
                0,
                25.89,
              ),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 18.h),
                      Text(
                        "₹120",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 10.h),
                      Text(
                        "MRP ₹150",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "View Bill",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 56.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
              width: 150.h,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: CustomElevatedButton(
                        height: 40.h,
                        text: "Buy",
                        onPressed: () {
                          Get.to(() => OrderPlaceScreen(),
                              binding: OrderPlaceBinding());
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen
  onTapArrowleftone() {
    Get.back();
  }
}
