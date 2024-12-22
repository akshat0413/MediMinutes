import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/pyment_options/controller/payment_options_controller.dart';

import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class PaymentOptionsScreen extends GetWidget<PaymentOptionsController> {
  const PaymentOptionsScreen({Key? key})
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
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: SizedBox(
                        // width: 370.h,
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
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.h),
                            child: Row(
                              children: [
                                Text(
                                  'To be paid '.tr,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFF19543E),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "₹ 109",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                    color: Color(0XFF19543E),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: Card(elevation: 8, child: _buildPaymentOffers()),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Divider(
                      thickness: 10,
                      color: Color(0XFFEEEEDD).withOpacity(0.42),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildUpiSection(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///Section Widget
  PreferredSize _buildHeader() {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: CustomAppBar(
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
        title: AppbarTitle(
          text: "Payment Options".tr,
        ),
        styleType: Style.whiteA70001,
      ),
    );
  }

  //Widget Section
  Widget _buildPaymentOffers() {
    return Container(
      height: 65.h,
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
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHandDiscount,
                  height: 40.h,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Column(
                  children: [
                    Text(
                      'Maximize saving!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'with payment offers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.fSize,
                        //  fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.arrow_circle_right_rounded,
                  size: 35.h,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpiSection() {
    final ValueNotifier<int> selectedOffer = ValueNotifier<int>(0);

    // Reusable widget for UPI app row
    Widget _buildUpiAppRow(
        {required String imagePath,
        required String appName,
        required int value,
        required ValueNotifier<int> selectedOffer}) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: CustomImageView(
                imagePath: imagePath,
                height: 50.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Text(
                appName,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "inter",
                    fontSize: 17.fSize),
              ),
            ),
            Spacer(),
            ValueListenableBuilder<int>(
              valueListenable: selectedOffer,
              builder: (context, selected, _) {
                return Transform.scale(
                  scale: 1.2,
                  child: Radio<int>(
                    value: value,
                    activeColor: Color(0XFF19543E),
                    groupValue: selected,
                    onChanged: (newValue) {
                      selectedOffer.value = newValue!;
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    // Reusable widget for the ElevatedButton
    Widget _buildPayButton(
        {required int selectedValue, required String amount}) {
      return ValueListenableBuilder<int>(
        valueListenable: selectedOffer,
        builder: (context, selected, _) {
          if (selected == selectedValue) {
            return ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(260.h, 50.h),
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Color(0XFFADCCA3),
              ),
              child: Text(
                "Pay ₹ $amount",
                style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 15.fSize,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            );
          }
          return SizedBox.shrink();
        },
      );
    }

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 10,
              color: Color(0XFFEEEEDD).withOpacity(0.42),
            ),
            SizedBox(height: 10.h),

            // Section for UPI Apps
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Pay by any UPI app",
                        style: TextStyle(
                            fontSize: 17.fSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'inter'),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "See all ",
                              style: TextStyle(
                                  color: Color(0XFF19543E),
                                  fontFamily: 'inter',
                                  fontSize: 15.fSize),
                            ),
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Color(0XFF19543E),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  // Paytm UPI Row
                  _buildUpiAppRow(
                    imagePath: ImageConstant.imgPaytm,
                    appName: "Paytm UPI",
                    value: 1,
                    selectedOffer: selectedOffer,
                  ),
                  SizedBox(height: 15.h),
                  _buildPayButton(selectedValue: 1, amount: "109"),

                  SizedBox(height: 15.h),
                  Divider(color: Color(0XFFADCCA3)),
                  SizedBox(height: 20.h),

                  // Google Pay Row
                  _buildUpiAppRow(
                    imagePath: ImageConstant.imgGpay, // Change image for GPay
                    appName: "GooglePay",
                    value: 2,
                    selectedOffer: selectedOffer,
                  ),
                  SizedBox(height: 15.h),
                  _buildPayButton(selectedValue: 2, amount: "109"),

                  SizedBox(height: 15.h),
                  Divider(color: Color(0XFFADCCA3)),
                  SizedBox(height: 20.h),

                  // Add New UPI ID Section
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgRuPay,
                            height: 50.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Add new UPI ID",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "inter",
                                    fontSize: 16.fSize),
                              ),
                              Text(
                                "We support all major UPI payment apps",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "inter",
                                    fontSize: 10.fSize),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Color(0XFF19543E),
                                fontWeight: FontWeight.w900,
                                fontSize: 14.fSize),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),
            Divider(
              thickness: 10,
              color: Color(0XFFEEEEDD).withOpacity(0.42),
            ),
            SizedBox(height: 20.h),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Cards",
                        style: TextStyle(
                            fontSize: 17.fSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'inter'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  // Add New Card Section
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCard,
                            height: 50.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Add new Card ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "inter",
                                    fontSize: 16.fSize),
                              ),
                              Text(
                                "We support all Credit/Debit Cards",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "inter",
                                    fontSize: 10.fSize),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Color(0XFF19543E),
                                fontWeight: FontWeight.w900,
                                fontSize: 14.fSize),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Divider(
              thickness: 10,
              color: Color(0XFFEEEEDD).withOpacity(0.42),
            ),
            SizedBox(height: 20.h),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Wallet",
                        style: TextStyle(
                            fontSize: 17.fSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'inter'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  // Add New Card Section
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPaytm,
                            height: 50.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Text(
                            "Paytm",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "inter",
                                fontSize: 16.fSize),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                            style: TextStyle(
                                color: Color(0XFF19543E),
                                fontWeight: FontWeight.w900,
                                fontSize: 14.fSize),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.h),
                  Divider(color: Color(0XFFADCCA3)),
                  SizedBox(height: 15.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgAmazonPayBalance,
                            height: 50.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: Text(
                            "Amazon Pay Balance",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "inter",
                                fontSize: 16.fSize),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                            style: TextStyle(
                                color: Color(0XFF19543E),
                                fontWeight: FontWeight.w900,
                                fontSize: 14.fSize),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.h),
                  Divider(color: Color(0XFFADCCA3)),
                  SizedBox(height: 15.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPhonepe,
                            height: 50.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Text(
                            "PhonePe",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "inter",
                                fontSize: 16.fSize),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Link",
                            style: TextStyle(
                                color: Color(0XFF19543E),
                                fontWeight: FontWeight.w900,
                                fontSize: 14.fSize),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Divider(
              thickness: 10,
              color: Color(0XFFEEEEDD).withOpacity(0.42),
            ),
            SizedBox(height: 20.h),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "More ways to pay",
                        style: TextStyle(
                            fontSize: 17.fSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'inter'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  // Add New Card Section
                  SizedBox(height: 20.h),

                  // Paytm UPI Row
                  _buildUpiAppRow(
                    imagePath: ImageConstant.imgPaylater,
                    appName: "Pay Later",
                    value: 3,
                    selectedOffer: selectedOffer,
                  ),

                  SizedBox(height: 15.h),
                  Divider(color: Color(0XFFADCCA3)),
                  SizedBox(height: 15.h),

                  // Google Pay Row
                  _buildUpiAppRow(
                    imagePath:
                        ImageConstant.imgPayOnDelivery, // Change image for GPay
                    appName: "Pay on Delivery",
                    value: 4,
                    selectedOffer: selectedOffer,
                  ),
                  SizedBox(height: 15.h),
                  Divider(color: Color(0XFFADCCA3)),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
