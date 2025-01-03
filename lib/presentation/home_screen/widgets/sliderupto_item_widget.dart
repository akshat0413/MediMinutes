import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/home_screen/controller/home_controller.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/sliderupto_item_model.dart';

// ignore_for_file: must_be_immutable
class SlideruptoItemWidget extends StatelessWidget {
  SlideruptoItemWidget(this.slideruptoItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SlideruptoItemModel slideruptoItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 134.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 6.h,
                bottom: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(
                              -(90 / 360),
                            ),
                            child: Text(
                              slideruptoItemModelObj.upto!.value,
                              style: CustomTextStyles
                                  .labelMediumInterOnErrorContainer,
                            ),
                          ),
                        ),
                        Text(
                          slideruptoItemModelObj.eighty!.value,
                          style: theme.textTheme.displaySmall,
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 30.h),
                      child: Text(
                        slideruptoItemModelObj.offer!.value.toUpperCase(),
                        style: TextStyle(
                            fontSize: 10.fSize,
                            color: Color(
                              0XFF161531,
                            ),
                            fontFamily: "Vietnam",
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Text(
                    slideruptoItemModelObj.onhealth!.value,
                    style: CustomTextStyles.labelLargeInterOnErrorContainer,
                  ),
                  SizedBox(height: 10.h),
                  CustomElevatedButton(
                    height: 30.h,
                    width: 90.h,
                    text: "lbl_shop_now".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillTeal,
                    buttonTextStyle: CustomTextStyles.labelMediumWhiteA70001,
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                      width: 108.h,
                      child: Text(
                        maxLines: 2,
                        slideruptoItemModelObj.homeopathy!.value,
                        style: TextStyle(
                          fontFamily: "inter",
                          fontSize: 8.fSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 12.h,
                  width: 26.h,
                  margin: EdgeInsets.only(left: 48.h),
                  decoration: BoxDecoration(
                    color: appTheme.whiteA70001.withOpacity(0.32),
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  height: 126.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 116.h,
                          width: 116.h,
                          margin: EdgeInsets.only(right: 2.h),
                          decoration: BoxDecoration(
                            color: appTheme.whiteA70001.withOpacity(0.32),
                            borderRadius: BorderRadius.circular(
                              58.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 84.h,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
