import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/buy_screen%20/buy_screen2.dart';
import 'package:mediminutes/presentation/order_place/binding/order_place_binding.dart';
import 'package:mediminutes/presentation/order_place/order_place_screen.dart';
import 'package:mediminutes/presentation/pyment_options/binding/payment_options_binding.dart';
import 'package:mediminutes/presentation/pyment_options/payment_options_screen.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/cart_controller.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key})
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "My Cart",
                          style: TextStyle(
                              fontSize: 23.h,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(
                        color: Color(0XFFADCCA3).withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: SizedBox(
                          width: 340.h,
                          height: 45.h,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10.h),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0XFFADCCA3).withOpacity(0.43),
                                  Color(0XFFF9DDBD).withOpacity(0.43),
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.h),
                                Text(
                                  '₹ 23 '.tr,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF19543E)),
                                ),
                                Text(
                                  'saved on this order'.tr,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDiscount,
                                  height: 25.h,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(
                        thickness: 10,
                        color: Color(0XFFEEEEDD).withOpacity(0.42),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: _buildPriceOfferInfo(),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Divider(
                        thickness: 10,
                        color: Color(0XFFEEEEDD).withOpacity(0.42),
                      ),
                      _buildCartItem(),
                      Divider(
                        thickness: 10,
                        color: Color(0XFFEEEEDD).withOpacity(0.42),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      _buildPromoCode(),
                      SizedBox(
                        height: 40.h,
                      ),
                      Divider(
                        thickness: 20,
                        color: Color(0XFFEEEEDD).withOpacity(0.42),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      _buildPaymentDetails(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 50.h,
                        width: 400.h,
                        color: Color(0XFFEEEEDD).withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.h, vertical: 10.h),
                          child: Text(
                            "*price shown includes of all applicable taxes, fees and subjects to availability",
                            style: TextStyle(
                                fontSize: 7.fSize, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 250.h,
            child: Column(
              children: [
                _buildPriceOffer(),
                _buildActionButtons(),
              ],
            ),
          )),
    );
  }

  ///Section Widget
  PreferredSize _buildHeader() {
    final SearchController2 searchController = Get.put(SearchController2());

    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Obx(() {
        return CustomAppBar(
          leadingWidth: 70.h,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.reply,
              color: Color(0XFF19543E),
              size: 28.h,
            ),
          ),
          // leading: AppbarLeadingImage(
          //   imagePath: ImageConstant.imgArrowLeftblack90001,
          //   onTap: () {
          //     onTapArrowleftone();
          //   },
          // ),
          title: searchController.isSearchActive.value
              ? Expanded(
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (query) {
                      onSearchSubmitted(query);
                    },
                  ),
                )
              : AppbarTitle(
                  text: "".tr,
                ),
          styleType: Style.whiteA70001,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: IconButton(
                icon: Icon(
                  searchController.isSearchActive.value
                      ? Icons.close
                      : Icons.search,
                  color: Color(0XFF19543E),
                  size: 30.h,
                ),
                onPressed: () {
                  searchController.toggleSearch();
                },
              ),
            ),
          ],
        );
      }),
    );
  }

  //Widget Section
  Widget _buildPriceOfferInfo() {
    return Container(
      height: 105.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment.topLeft, //Alignment(0, 0.5),
          end: Alignment.bottomRight, //Alignment(1, 0),
          colors: [
            Color(0XFFA90F22).withOpacity(0.80),
            // Color(0XFFDC7272).withOpacity(0.9),
            Color(0XFFDC7272).withOpacity(0.80)
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                children: [
                  SizedBox(width: 5.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgFlashOn,
                    height: 30.h,
                  ),
                  Text(
                    'Estimated Delivery Time: 10 mins '.tr,
                    style: TextStyle(color: Colors.white, fontSize: 13.fSize),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              "msg_add_items_worth".tr,
              style: TextStyle(
                fontSize: 11.fSize,
                color: Colors.white70,
                fontWeight: FontWeight.w100,
                fontFamily: 'inter',
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Container(
                  height: 6.h,
                  width: 60.h,
                  decoration: BoxDecoration(
                    color: appTheme.deepOrange40001,
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 205.h,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildCartItem() {
    int quantity = 1; // Initial quantity

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Container(
        decoration: BoxDecoration(
            // gradient: LinearGradient(colors: [
            //   Colors.white,
            //   Colors.white,
            //   theme.colorScheme.primary,
            // ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            ),
        height: 240.h,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.h,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 45.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgBuyParacetamol,
                            //width: 70.h,
                            height: 50.h,
                          ),
                        ),
                        SizedBox(width: 15.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dolo 650 Tablets',
                                      style: TextStyle(
                                          fontSize: 14.fSize,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "strip of 15 tablets",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 30.h,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    width: 105,
                                    height: 30.h,
                                    child: Container(
                                      child: _buildQuantitySelector(quantity,
                                          (int newQuantity) {
                                        quantity = newQuantity;
                                      }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹ 30',
                                  style: TextStyle(
                                      fontFamily: 'inter',
                                      color: Colors.black,
                                      fontSize: 17.fSize,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Text(
                                  'MRP ₹ 33.76  ',
                                  style: TextStyle(
                                      fontFamily: 'inter',
                                      color: Colors.black87,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14.fSize,
                                      fontWeight: FontWeight.w100),
                                ),
                                Text(
                                  '11% off',
                                  style: TextStyle(
                                      color: Color(0XFFEB2323),
                                      fontSize: 14.fSize,
                                      fontWeight: FontWeight.w100),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Padding(
                              padding: EdgeInsets.only(left: 180.h),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Remove",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14.fSize,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0XFF000000).withOpacity(0.24),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "ADD MORE ITEMS",
                    style: TextStyle(
                        color: Color(0XFF19543E),
                        fontSize: 17.h,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 155.h,
                ),
                Icon(
                  Icons.add_circle,
                  color: Color(0XFF19543E),
                  size: 22.h,
                )
              ],
            ),
          ],
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
            color: Color(0XFFEB2323),
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
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: Color(0XFFEB2323),
            size: 20.h,
          ),
          onPressed: () {
            onQuantityChanged(quantity + 1);
          },
        ),
      ],
    );
  }

  Widget _buildPriceOffer() {
    return SizedBox(
      height: 70.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 12.h,
              top: 10.h,
              bottom: 10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.h), // Circular top-left corner
                topRight: Radius.circular(15.h), // Circular top-right corner
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft, //Alignment(0, 0.5),
                end: Alignment.bottomRight, //Alignment(1, 0),
                colors: [appTheme.red900Cc, appTheme.red300Cc],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_add_items_worth".tr,
                    style: TextStyle(fontSize: 12.fSize, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 120.h,
                      decoration: BoxDecoration(
                        color: appTheme.deepOrange40001,
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 185.h,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Widget Section
  Widget _buildPromoCode() {
    final ValueNotifier<int> selectedOffer = ValueNotifier<int>(0);

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Promo Code",
                style: TextStyle(
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.withOpacity(0.7)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Row(
                    children: [
                      ValueListenableBuilder<int>(
                        valueListenable: selectedOffer,
                        builder: (context, selected, _) {
                          return Transform.scale(
                            scale: 1.3,
                            child: Radio<int>(
                              value: 1,
                              activeColor: Color(0XFF19543E),
                              groupValue: selected,
                              onChanged: (value) {
                                selectedOffer.value = value!;
                              },
                            ),
                          );
                        },
                      ),
                      Text(
                        "Apply promo code",
                        style: TextStyle(
                            fontSize: 14.fSize,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.7), // Divider color
                        thickness: 1.0, // Divider thickness
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey.withOpacity(0.7)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.7), // Divider color
                        thickness: 1.0, // Divider thickness
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  ValueListenableBuilder<int>(
                    valueListenable: selectedOffer,
                    builder: (context, selected, _) {
                      return Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          value: 2,
                          activeColor: Color(0XFF19543E),
                          groupValue: selected,
                          onChanged: (value) {
                            selectedOffer.value = value!;
                          },
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h),
                    child: Text(
                      "MediCoins",
                      style: TextStyle(
                          fontSize: 14.fSize,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCoinWallet,
                    height: 26.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 140),
                  ),
                  Text(
                    "₹ 5",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter'),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///widget Section
  Widget _buildPaymentDetails() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
            ),
            child: Text(
              "PAYMENT DETAILS",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "MRP Total",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "₹ 33.76",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "Product Discount",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "-₹ 3.76",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "MediCoins",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "-₹ 6.00 ",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "₹ 25.00",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "Handling Fee",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "₹ 5.00",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "Delivery Fee",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "₹ 40.00",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "Small Cart Fee",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "₹ 40.00",
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              children: [
                Text(
                  "Total Payable Amount",
                  style:
                      TextStyle(color: Color(0XFFFF6B46), fontFamily: 'Inter'),
                ),
                Spacer(),
                Text(
                  "₹ 109.00",
                  style:
                      TextStyle(color: Color(0XFFFF6B46), fontFamily: 'Inter'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10.h),
                  gradient: LinearGradient(
                      // begin: Alignment(0, 1),
                      // end: Alignment(0.1, 0),
                      colors: [
                        Color(0XFFADCCA3).withOpacity(0.43),
                        Color(0XFFF9DDBD).withOpacity(0.43)
                      ])),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Total Savings'.tr,
                      style: TextStyle(color: Color(0XFF19543E)),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Text(
                      "₹ 9.76",
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Inter'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildActionButtons() {
    return Container(
      width: double.maxFinite,
      //  height: 150.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.h,
      ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 10.h, right: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMarketPlace,
                  height: 40.h,
                  width: 54.h,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HOME",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.fSize,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "PARAS TIREA NOIDA",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.fSize,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change",
                          style: TextStyle(
                              fontSize: 15.fSize, color: Color(0XFFFF6B46)),
                        )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "₹109",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'inter',
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "See bill summary",
                        style: TextStyle(
                            color: Color(0XFFFF6B46),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.h),
                  child: SizedBox(
                    width: 120,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(
                          PaymentOptionsScreen(),
                          binding: PaymentOptionsBinding(),
                        );
                      },
                      child: Text(
                        "Proceed",
                        style:
                            TextStyle(color: Colors.white, fontSize: 18.fSize),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.h)),
                          backgroundColor: Color(0XFFFF6B46).withOpacity(0.85)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onSearchSubmitted(String query) {
    Get.toNamed('/search-results', arguments: {'query': query});
  }
}

class SearchController extends GetxController {
  var isSearchActive = false.obs; // Observable for search bar visibility

  void toggleSearch() {
    isSearchActive.value = !isSearchActive.value;
  }
}
