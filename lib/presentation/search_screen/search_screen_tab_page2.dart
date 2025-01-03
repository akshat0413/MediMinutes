import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/search_screen/controller/search_screen_controller.dart';
import 'package:mediminutes/presentation/search_screen/models/pharmacy_list_item_model.dart';
import 'package:mediminutes/presentation/search_screen/widgets/medicine_list_item_widget.dart';
import 'package:mediminutes/presentation/search_screen/widgets/pharmacy_list_item_widget.dart.dart';
import 'package:mediminutes/widgets/app_bar/custom_app_bar.dart';
import 'package:mediminutes/widgets/custom_outlined_button.dart';

import '../cart_screen/binding/cart_binding.dart';
import '../cart_screen/cart_screen.dart';
import 'models/medicine_item_list_model.dart';

class SearchScreenTabPage2 extends StatelessWidget {
  SearchScreenTabPage2({Key? key})
      : super(
          key: key,
        );

  SearchScreenController controller = Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildSortOptions(),
                  SizedBox(
                    height: 28.h,
                  ),

                  _builgetDiscount(),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: Divider(color: Color(0XFFADCCA3)),
                        ),
                      ),
                      SizedBox(width: 10.h),
                      Column(
                        children: [
                          Text(
                            "ALL PHARMACIES ".tr,
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontSize: 12.fSize),
                          ),
                          Text(
                            "DELIVERING DOLO 650".tr,
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontSize: 12.fSize),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.h),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: Divider(color: Color(0XFFADCCA3)),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                  // _builgetDiscount+FreeDelivery(),
                  SizedBox(
                    height: 20.h,
                  ),
                  _buildMedicineList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildSortOptions() {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        //color: Color(0XFF000000).withOpacity(0.05)
        gradient: LinearGradient(
          begin: Alignment.topCenter, //Alignment(1, 0.8),
          end: Alignment.bottomCenter, //(1, 0.8),
          colors: [
            // Color(0XFFDC7272).withOpacity(0.9),
            Colors.grey.withOpacity(0.12), Colors.white.withOpacity(0.4),
          ],
        ),
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 33.h,
            width: 120.h,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h, right: 15.h),
              child: ElevatedButton(
                onPressed: () {
                  // Your onPressed functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white, // Text color
                  side: BorderSide(color: Colors.black), // Border color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Border radius (optional)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.5, vertical: 12.0), // Padding (optional)
                ),
                child: Row(
                  children: [
                    Text(
                      'Sort By',
                      style: TextStyle(fontSize: 15.fSize),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ), // Replace with your desired text
              ),
            ),
          ),
          // Expanded(
          //   child: CustomOutlinedButton(
          //     height: 36.h,
          //     width: 20,
          //     text: "Sort By".tr,
          //     margin: EdgeInsets.only(left: 8.h, right: 20.h),
          //     buttonStyle: CustomButtonStyles.outlineprimaryContainer,
          //     buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
          //   ),
          // ),
          SizedBox(
            height: 33.h,
            width: 150.h,
            child: Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: ElevatedButton(
                onPressed: () {
                  // Your onPressed functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white, // Text color
                  side: BorderSide(color: Colors.black), // Border color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Border radius (optional)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0), // Padding (optional)
                ),
                child: Text(
                  'Fast Delivery',
                  style: TextStyle(fontSize: 15.fSize),
                ), // Replace with your desired text
              ),
            ),
          ),
          SizedBox(
            height: 33.h,
            width: 90.h,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: ElevatedButton(
                onPressed: () {
                  // Your onPressed functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white, // Text color
                  side: BorderSide(color: Colors.black), // Border color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Border radius (optional)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0), // Padding (optional)
                ),
                child: Text(
                  'Offers',
                  style: TextStyle(fontSize: 15.fSize),
                ), // Replace with your desired text
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _builgetDiscount() {
    return Container(
      margin: EdgeInsets.only(
        left: 10.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        color: Color(0XFFFFDEB7).withOpacity(0.48),
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Text(
                "Get Discount + Free Delivery with",
                style: TextStyle(
                    fontSize: 13.fSize,
                    color: Color(0XFF19543E),
                    fontWeight: FontWeight.w400,
                    fontFamily: "inter"),
              ),
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Text(
                "lbl_mediminutes".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF19543E)),
              ),
              Positioned(
                top: -6.h,
                right: -10.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgXboxCross,
                  height: 17.h,
                  width: 17.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildMedicineList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.h,
          right: 10.h,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Mediminutes Pharmacy",
                  style: TextStyle(
                    fontSize: 20.fSize,
                    fontFamily: "inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      height: 16.h,
                      imagePath: ImageConstant.imgClockPharma,
                    ),
                    Text(
                      "  10 mins",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.time_to_leave,
                      color: Colors.grey,
                      size: 18.h,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      '2 km',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 170.h,
                child: Obx(
                  () => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 4.h,
                      );
                    },
                    itemCount: controller.searchScreenTabModelObj.value
                        .medicinelistItemList.value.length,
                    itemBuilder: (context, index) {
                      MedicineItemListModel model = controller
                          .searchScreenTabModelObj
                          .value
                          .medicinelistItemList
                          .value[index];
                      return MedicineListItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h, top: 40.h),
                child: Text(
                  "Sarkar Pharmacy",
                  style: TextStyle(
                    fontSize: 20.fSize,
                    fontFamily: "inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      height: 16.h,
                      imagePath: ImageConstant.imgClockPharma,
                    ),
                    Text(
                      "  10 mins",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.time_to_leave,
                      color: Colors.grey,
                      size: 18.h,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      '2 km',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 170.h,
                child: Obx(
                  () => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 4.h,
                      );
                    },
                    itemCount: controller.searchScreenTabModelObj.value
                        .medicinelistItemList.value.length,
                    itemBuilder: (context, index) {
                      MedicineItemListModel model = controller
                          .searchScreenTabModelObj
                          .value
                          .medicinelistItemList
                          .value[index];
                      return MedicineListItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h, top: 40.h),
                child: Text(
                  "Mediminutes Pharmacy",
                  style: TextStyle(
                    fontSize: 20.fSize,
                    fontFamily: "inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      height: 16.h,
                      imagePath: ImageConstant.imgClockPharma,
                    ),
                    Text(
                      "  10 mins",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.time_to_leave,
                      color: Colors.grey,
                      size: 18.h,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      '2 km',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 170.h,
                child: Obx(
                  () => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 4.h,
                      );
                    },
                    itemCount: controller.searchScreenTabModelObj.value
                        .medicinelistItemList.value.length,
                    itemBuilder: (context, index) {
                      MedicineItemListModel model = controller
                          .searchScreenTabModelObj
                          .value
                          .medicinelistItemList
                          .value[index];
                      return MedicineListItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h, top: 40.h),
                child: Text(
                  "City Pharmacy",
                  style: TextStyle(
                    fontSize: 20.fSize,
                    fontFamily: "inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      height: 16.h,
                      imagePath: ImageConstant.imgClockPharma,
                    ),
                    Text(
                      "  10 mins",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.time_to_leave,
                      color: Colors.grey,
                      size: 18.h,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      '2 km',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "inter",
                          fontSize: 11.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 170.h,
                child: Obx(
                  () => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 4.h,
                      );
                    },
                    itemCount: controller.searchScreenTabModelObj.value
                        .medicinelistItemList.value.length,
                    itemBuilder: (context, index) {
                      MedicineItemListModel model = controller
                          .searchScreenTabModelObj
                          .value
                          .medicinelistItemList
                          .value[index];
                      return MedicineListItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
              left: 20.h,
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
                    style: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'inter',
                        color: Colors.white),
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

  ///Section Widget
  Widget _buildActionButtons() {
    return Container(
      width: double.maxFinite,
      //  height: 150.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        //vertical: 10.h,
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
            height: 20.h,
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
                            fontFamily: 'inter',
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "See bill summary",
                        style: TextStyle(
                            color: Color(0XFFFF6B46),
                            fontSize: 12,
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
                          CartScreen(),
                          binding: CartBinding(),
                        );
                      },
                      child: Text(
                        "Continue",
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
}
