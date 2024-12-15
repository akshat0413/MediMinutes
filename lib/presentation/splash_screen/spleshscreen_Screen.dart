import 'dart:ui';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/splash_screen/controller/spleshscreen_controller.dart';
import 'package:mediminutes/presentation/splash_screen/models/sliderview_item_model.dart';
import 'package:mediminutes/presentation/splash_screen/widgets/sliderview_item_widget.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';
import 'package:mediminutes/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpleshscreenScreen extends GetWidget<SpleshscreenController> {
  const SpleshscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 800.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black90001.withOpacity(0.13),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        12.63,
                        11.79,
                      ),
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 352.h,
                      width: 280.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 4.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2,
                      height: 352.h,
                      width: 246.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 30.h),
                    ),
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 219,
                          sigmaY: 219,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            left: 14.h,
                            top: 26.h,
                            right: 14.h,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLogo,
                                    height: 48.h,
                                    width: 54.h,
                                  ),
                                  SizedBox(
                                    width: 8.h,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_medi".tr,
                                            style:
                                                theme.textTheme.headlineLarge,
                                          ),
                                          TextSpan(
                                            text: "lbl_minutes".tr,
                                            style:
                                                theme.textTheme.headlineLarge,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "msg_know_your_medicines".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineLarge,
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "msg_get_authentic_information".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .bodyMediumOpenSansGray60004
                                    .copyWith(
                                  height: 1.64,
                                ),
                              ),
                              SizedBox(
                                height: 45.h,
                              ),
                              CustomElevatedButton(
                                height: 46.h,
                                width: 152.h,
                                text: "lbl_get_started".tr,
                                rightIcon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowleft,
                                    height: 22.h,
                                    width: 22.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                buttonStyle:
                                    CustomButtonStyles.outlinePrimaryTL10,
                                buttonTextStyle: CustomTextStyles
                                    .bodyMediumOpenSansBlack90001,
                              ),
                              SizedBox(
                                height: 55.h,
                              ),
                              Container(
                                height: 354.h,
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 48.h),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    _buildSliderView(),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: ClipRRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 18,
                                            sigmaY: 18,
                                          ),
                                          child: Container(
                                            width: 134.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 8.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer
                                                  .withOpacity(0.47),
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(2.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.indigo800,
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6,
                                                  ),
                                                  child: Text(
                                                    "msg_india_s_trusted".tr,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .openSansOnPrimaryContainer,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4.h,
                                                ),
                                                Container(
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .blue5001,
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder6,
                                                          ),
                                                          child: ClipRect(
                                                            child:
                                                                BackdropFilter(
                                                              filter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 61,
                                                                sigmaY: 61,
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            2.h),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            24.h,
                                                                        child:
                                                                            Text(
                                                                          "lbl_rapid_delivery"
                                                                              .tr,
                                                                          maxLines:
                                                                              2,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          style: CustomTextStyles
                                                                              .openSansIndigo500
                                                                              .copyWith(
                                                                            height:
                                                                                1.52,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCar,
                                                                      height:
                                                                          12.h,
                                                                      width:
                                                                          22.h,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 6.h,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .blue5001,
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder6,
                                                          ),
                                                          child: ClipRect(
                                                            child:
                                                                BackdropFilter(
                                                              filter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 61,
                                                                sigmaY: 61,
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            2.h),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            24.h,
                                                                        child:
                                                                            Text(
                                                                          "lbl_rapid_delivery"
                                                                              .tr,
                                                                          maxLines:
                                                                              2,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          style: CustomTextStyles
                                                                              .openSansIndigo500
                                                                              .copyWith(
                                                                            height:
                                                                                1.52,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCar,
                                                                      height:
                                                                          12.h,
                                                                      width:
                                                                          22.h,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4.h,
                                                ),
                                                Container(
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 2.h),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          children: [
                                                            CustomIconButton(
                                                              height: 20.h,
                                                              width: 20.h,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .outlineIndigo,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup16,
                                                              ),
                                                            ),
                                                            Text(
                                                              "lbl_all".tr,
                                                              maxLines: null,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .poppinsIndigo30001
                                                                  .copyWith(
                                                                height: 2.00,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4.h,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          children: [
                                                            CustomIconButton(
                                                              height: 20.h,
                                                              width: 20.h,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .outlineIndigo,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup15,
                                                              ),
                                                            ),
                                                            Text(
                                                              "lbl_cardiology"
                                                                  .tr,
                                                              maxLines: null,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .poppinsIndigo30001
                                                                  .copyWith(
                                                                height: 2.00,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4.h,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          children: [
                                                            CustomIconButton(
                                                              height: 20.h,
                                                              width: 20.h,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .outlineIndigo,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup14,
                                                              ),
                                                            ),
                                                            Text(
                                                              "lbl_medicine".tr,
                                                              maxLines: null,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .poppinsIndigo30001
                                                                  .copyWith(
                                                                height: 2.00,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4.h,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          children: [
                                                            CustomIconButton(
                                                              height: 20.h,
                                                              width: 20.h,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .outlineIndigo,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup13,
                                                              ),
                                                            ),
                                                            Text(
                                                              "lbl_general".tr,
                                                              maxLines: null,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .poppinsIndigo30001
                                                                  .copyWith(
                                                                height: 2.00,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4.h,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 4.h),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 4.h,
                                                    vertical: 2.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blue50,
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6,
                                                    border: Border.all(
                                                      color: appTheme.gray5001,
                                                      width: 0.57.h,
                                                    ),
                                                  ),
                                                  width: double.maxFinite,
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 16.h,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              width: double
                                                                  .maxFinite,
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .zero,
                                                                color: appTheme
                                                                    .deepPurple50,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  side:
                                                                      BorderSide(
                                                                    color: appTheme
                                                                        .indigo800
                                                                        .withOpacity(
                                                                            0.22),
                                                                    width:
                                                                        0.84.h,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder6,
                                                                ),
                                                                child:
                                                                    Container(
                                                                  height: 16.h,
                                                                  width: double
                                                                      .maxFinite,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: appTheme
                                                                        .deepPurple50,
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder6,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: appTheme
                                                                          .indigo800
                                                                          .withOpacity(
                                                                              0.22),
                                                                      width:
                                                                          0.84.h,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgScreenshot2RemovebgPreview,
                                                                        height:
                                                                            16.h,
                                                                        width:
                                                                            16.h,
                                                                        radius:
                                                                            BorderRadius.circular(4.h),
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              3.h,
                                                                          width:
                                                                              3.h,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                appTheme.greenA200,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              1.h,
                                                                            ),
                                                                            border:
                                                                                Border.all(
                                                                              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                              width: 0.29.h,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgStar,
                                                                  height: 4.h,
                                                                  width: 4.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                ),
                                                                Text(
                                                                  "lbl_4_8".tr,
                                                                  style: CustomTextStyles
                                                                      .poppinsGray900a5,
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 8.h,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width: 46.h,
                                                              child: Text(
                                                                "msg_dr_maria_waston"
                                                                    .tr,
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .poppinsBluegray800
                                                                    .copyWith(
                                                                  height: 1.06,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              "msg_heart_surgeon_new"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .poppinsBluegray800
                                                                  .copyWith(
                                                                height: 1.10,
                                                              ),
                                                            ),
                                                            Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          2.h),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: appTheme
                                                                    .indigo500,
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder2,
                                                              ),
                                                              child: Text(
                                                                "lbl_appointment"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: CustomTextStyles
                                                                    .poppinsgray5001,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 38.h),
                              SizedBox(
                                height: 8.h,
                                child: AnimatedSmoothIndicator(
                                  activeIndex: 0,
                                  count: 6,
                                  effect: ScrollingDotsEffect(
                                    activeDotColor: theme.colorScheme.primary,
                                    dotColor: theme.colorScheme.primary,
                                    dotHeight: 8.h,
                                    dotWidth: 8.h,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Section Widget
  Widget _buildSliderView() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 292.h,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reson) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller
            .spleshscreenModelObj.value.sliderviewItemList.value.length,
        itemBuilder: (context, int index, int realIndex) {
          SliderviewItemModel model = controller
              .spleshscreenModelObj.value.sliderviewItemList.value[index];
          return SliderviewItemWidget(
            model,
          );
        },
      ),
    );
  }
}
