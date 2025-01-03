import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/search_screen/controller/search_screen_controller.dart';
import 'package:mediminutes/presentation/search_screen/models/pharmacy_list_item_model.dart';
import 'package:mediminutes/presentation/search_screen/widgets/pharmacy_list_item_widget.dart.dart';
import 'package:mediminutes/widgets/custom_outlined_button.dart';

class SearchScreenTabPage extends StatelessWidget {
  SearchScreenTabPage({Key? key})
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
                  _buildFastDeliveryInfo(),
                  SizedBox(
                    height: 50.h,
                  ),
                  _buildPharmacyList(),
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
  Widget _buildFastDeliveryInfo() {
    return Container(
      margin: EdgeInsets.only(
        left: 10.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 4.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(4, 0),
          colors: [
            Color(0XFFA90F22).withOpacity(0.69),
            // Color(0XFFDC7272).withOpacity(0.9),
            Color(0XFFDC7272).withOpacity(0.69)
          ],
        ),
      ),
      // decoration: AppDecoration.outlineBlack900.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder6,
      // ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Text(
                "Get Fast Delivery",
                style: TextStyle(color: Colors.white, fontFamily: "inter"),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSearchDelivery,
            height: 40.h,
            width: 60.h,
            margin: EdgeInsets.only(right: 6.h),
          )
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildPharmacyList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.h,
          right: 10.h,
        ),
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 18.h,
              );
            },
            itemCount: controller.searchScreenTabModelObj.value
                .pharmacylistItemList.value.length,
            itemBuilder: (context, index) {
              PharmacyListItemModel model = controller.searchScreenTabModelObj
                  .value.pharmacylistItemList.value[index];
              return PharmacyListItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
