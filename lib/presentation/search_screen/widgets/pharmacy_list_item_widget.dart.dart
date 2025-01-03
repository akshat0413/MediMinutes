import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/search_screen/controller/search_screen_controller.dart';
import 'package:mediminutes/presentation/search_screen/models/pharmacy_list_item_model.dart';

class PharmacyListItemWidget extends StatelessWidget {
  PharmacyListItemWidget(this.pharmacyListItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PharmacyListItemModel pharmacyListItemModelObj;

  var controller = Get.find<SearchScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: BoxDecoration(
        color: Color(0XFFEEEDD).withOpacity(0.5),
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      // decoration: AppDecoration.fillPrimary.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder20,
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(() => Card(
                elevation: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the radius as needed
                  child: CustomImageView(
                    imagePath: pharmacyListItemModelObj.minsOne!.value,
                    height: 172.h,
                    width: double.maxFinite,
                  ),
                ),
              )),
          SizedBox(
            height: 22.h,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 6.h),
                          child: Row(
                            children: [
                              Obx(
                                () => CustomImageView(
                                  imagePath:
                                      pharmacyListItemModelObj.minsThree!.value,
                                  height: 16.h,
                                  width: 18.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Obx(
                                  () => Text(
                                    pharmacyListItemModelObj.time!.value,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ),
                              Container(
                                height: 2.h,
                                width: 3.h,
                                margin: EdgeInsets.only(left: 4.h),
                                decoration: BoxDecoration(
                                  color: Color(0XFFEEEDD),
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              Obx(
                                () => Text(
                                  pharmacyListItemModelObj.distance!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Obx(
                          () => Text(
                            pharmacyListItemModelObj.mediminutes!.value,
                            style: TextStyle(
                                fontFamily: "inter",
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                                    .fSize), //CustomTextStyles.titleLargeOpenSansBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 22.h,
                  width: 30.h,
                  margin: EdgeInsets.only(top: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [Icon(Icons.bookmark_outlined)],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
