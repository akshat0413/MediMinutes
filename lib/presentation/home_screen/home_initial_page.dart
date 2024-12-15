import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:mediminutes/presentation/home_screen/controller/home_controller.dart';
import 'package:mediminutes/presentation/home_screen/models/consultationlist_item_model.dart';
import 'package:mediminutes/presentation/home_screen/models/gridnutritional_item_model.dart';
import 'package:mediminutes/presentation/home_screen/models/lisnutrition_item_model.dart';
import 'package:mediminutes/presentation/home_screen/models/listaccucheck_item_model.dart';
import 'package:mediminutes/presentation/home_screen/models/listface_wash_item_model.dart';
import 'package:mediminutes/presentation/home_screen/models/listmedicines_item_model.dart';
import 'package:mediminutes/presentation/home_screen/models/sliderupto_item_model.dart';
import 'package:mediminutes/presentation/home_screen/widgets/consultationlist_item_widget.dart';
import 'package:mediminutes/presentation/home_screen/widgets/gridnutritionalgrid_item_widget.dart';
import 'package:mediminutes/presentation/home_screen/widgets/listaccucheck_item_widget.dart';
import 'package:mediminutes/presentation/home_screen/widgets/listface_wash_item_widget.dart';
import 'package:mediminutes/presentation/home_screen/widgets/listmedicines_item_widget.dart';
import 'package:mediminutes/presentation/home_screen/widgets/listnutritional_item_widget.dart';
import 'package:mediminutes/presentation/home_screen/widgets/sliderupto_item_widget.dart';
import 'package:mediminutes/presentation/notification_screen/binding/notification_binding.dart';
import 'package:mediminutes/presentation/notification_screen/notification_screen.dart';
import 'package:mediminutes/presentation/offer_zone_screen/offer_zone_screen.dart';
import 'package:mediminutes/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:mediminutes/widgets/app_bar/appbar_subtitle.dart';
import 'package:mediminutes/widgets/app_bar/appbar_trailling_image.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';
import 'package:mediminutes/widgets/custom_search_view.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../routes/app_routes.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../offer_zone_screen/binding/offer_zone_binding.dart';

// ignore: must_be_immutable
class HomeInitialPage extends StatelessWidget {
  HomeInitialPage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      ),
      child: Column(
        children: [
          _buildSearchSection(),
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          _buildConsultationList(),
                          SizedBox(height: 16.h),
                          _buildOurServices(),
                          SizedBox(height: 16.h),
                          _buildUploadPrescription(),
                          SizedBox(height: 12.h),
                          _buildPharmacyNearYou(),
                          SizedBox(height: 10.h),
                          _buildNutritionalSection(),
                          SizedBox(height: 32.h),
                          _buildOffersSection(),
                          SizedBox(height: 30.h),
                          _buildLimitedTimeDeals(),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h),
                    _buildExploreSection(),
                    SizedBox(height: 18.h),
                    _buildExploreNutrition(),

                    SizedBox(height: 32.h),
                    // _buildExploreSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowplayThree({
    required String titleThree,
    required String durationOne,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 6.h,
          width: 6.h,
          margin: EdgeInsets.only(top: 2.h),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              left: 8.h,
            ),
            child: Text(
              titleThree,
              style: CustomTextStyles.bodySmallMontserratBlack90001.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
          ),
          child: Text(
            titleThree,
            style: CustomTextStyles.bodySmallMontserratBlueGray40001.copyWith(
              color: appTheme.blueGray40001,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 50.h,
            leadingWidth: 65.h,
            leading: AppbarLeadingImageOne(
              imagePath: ImageConstant.imgShape,
              height: 40.h,
              width: 40.h,
              margin: EdgeInsets.only(left: 15.h),
            ),
            title: SizedBox(
              width: double.maxFinite,
              child: AppbarSubTitle(
                text: "msg_delivery_to_nandanvan".tr,
                margin: EdgeInsets.only(left: 10.h),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    // Add functionality for the wallet icon button
                    print('Wallet icon clicked!');
                  },
                  icon: Icon(Icons.wallet_rounded)),
              IconButton(
                  onPressed: () {
                    Get.to(
                      () => NotificationScreen(),
                      binding: NotificationBinding(),
                    );
                    // Add functionality for the bell icon button
                    print('Bell icon clicked!');
                  },
                  icon: Icon(Icons.notifications_none_sharp)),
              SizedBox(
                width: 7,
              )
            ],
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 4.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConsultationList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      width: double.maxFinite,
      child: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 12.h,
            children: List.generate(
              controller.homeInitialModelObj.value.consultationlistItemList
                  .value.length,
              (index) {
                ConsultationlistItemModel model = controller.homeInitialModelObj
                    .value.consultationlistItemList.value[index];
                return ConsultationlistItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOurServices() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 6.h,
        right: 4.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_our_services".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer
                .copyWith(color: Colors.black),
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 14.h,
                  children: List.generate(
                    controller.homeInitialModelObj.value.listmedicinesItemList
                        .value.length,
                    (index) {
                      ListmedicinesItemModel model = controller
                          .homeInitialModelObj
                          .value
                          .listmedicinesItemList
                          .value[index];
                      ListmedicinesItemModel();
                      return ListmedicinesItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUploadThreen() {
    return CustomElevatedButton(
      width: 108.h,
      text: "lbl_order_now".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.labelLargeLatoOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildUploadPrescription() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 25.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_upload_prescription".tr.toUpperCase(),
            style: CustomTextStyles.titleMediumBeVietnamProGray90003,
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: 214.h,
            child: Text(
              "msg_upload_a_prescription".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallLatoGray90003.copyWith(
                height: 1.36,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 88.h,
                    child: Text(
                      "msg_flat_25_off_on".tr.toUpperCase(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumBeVietnamProGray90003
                          .copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ),
                _buildUploadThreen(),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  _buildPharmacyNearYou() {
    return Container(
        height: 244.h,
        width:
            double.infinity, // Use double.infinity instead of double.maxFinite
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(right: 6.h, left: 6),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_pharmacy".tr,
                          style: CustomTextStyles.titleMediumSemiBold,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "lbl_see_more".tr,
                            style: CustomTextStyles.titleSmallGray50004,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.h),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width:
                                150.h, // Set a fixed width for each container
                            padding: EdgeInsets.all(8.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 110.h,
                                  width: 150.h,
                                  radius: BorderRadius.circular(12.h),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "msg_manchanda_pharma".tr,
                                  style:
                                      CustomTextStyles.titleSmallBluegray90005,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "lbl_33_min".tr,
                                  style:
                                      CustomTextStyles.labelLargeInterGray50004,
                                ),
                                SizedBox(height: 6.h),
                              ],
                            ),
                          ),
                          Container(
                            width:
                                150.h, // Set a fixed width for each container
                            padding: EdgeInsets.all(8.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 110.h,
                                  width: 150.h,
                                  radius: BorderRadius.circular(12.h),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "msg_manchanda_pharma".tr,
                                  style:
                                      CustomTextStyles.titleSmallBluegray90005,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "lbl_33_min".tr,
                                  style:
                                      CustomTextStyles.labelLargeInterGray50004,
                                ),
                                SizedBox(height: 6.h),
                              ],
                            ),
                          ),
                          Container(
                            width:
                                150.h, // Set a fixed width for each container
                            padding: EdgeInsets.all(8.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 110.h,
                                  width: 150.h,
                                  radius: BorderRadius.circular(12.h),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "msg_manchanda_pharma".tr,
                                  style:
                                      CustomTextStyles.titleSmallBluegray90005,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "lbl_33_min".tr,
                                  style:
                                      CustomTextStyles.labelLargeInterGray50004,
                                ),
                                SizedBox(height: 6.h),
                              ],
                            ),
                          ),
                          Container(
                            width:
                                150.h, // Set a fixed width for each container
                            padding: EdgeInsets.all(8.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 110.h,
                                  width: 150.h,
                                  radius: BorderRadius.circular(12.h),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "msg_manchanda_pharma".tr,
                                  style:
                                      CustomTextStyles.titleSmallBluegray90005,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "lbl_33_min".tr,
                                  style:
                                      CustomTextStyles.labelLargeInterGray50004,
                                ),
                                SizedBox(height: 6.h),
                              ],
                            ),
                          ),
                          // Repeat similar structure for additional items
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  /// Section Widget
  Widget _buildNutritionalSection() {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Divider(color: appTheme.gray600),
                  ),
                ),
                SizedBox(width: 6.h),
                Text(
                  "lbl_categories".tr,
                  style: CustomTextStyles.titleMediumGray600,
                ),
                SizedBox(width: 6.h),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Divider(color: appTheme.gray600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  child: Text(
                    "lbl_see_more2".tr,
                    style: CustomTextStyles.bodyMediumInterBlueGray50004,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Obx(
                () => ResponsiveGridListBuilder(
                  minItemWidth: 2,
                  minItemsPerRow: 3,
                  maxItemsPerRow: 3,
                  horizontalGridSpacing: 12.h,
                  verticalGridSpacing: 12.h,
                  builder: (context, items) => ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    children: items,
                  ),
                  gridItems: List.generate(
                    controller.homeInitialModelObj.value
                        .gridnutritionalItemModel.value.length,
                    (index) {
                      GridnutritionalItemModel model = controller
                          .homeInitialModelObj
                          .value
                          .gridnutritionalItemModel
                          .value[index];
                      return GridNutritionalItemWidget(model);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 16.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                borderRadius: BorderRadiusStyle.roundedBorder6,
                border: Border.all(
                  color: appTheme.gray50004,
                  width: 1.h,
                ),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgInsurance,
                    height: 40.h,
                    width: 40.h,
                  ),
                  SizedBox(width: 6.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_mediminutes_pharmacy".tr,
                          style: CustomTextStyles.titleSmallBluegray90001,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "lbl_stores_near_you".tr,
                          style: CustomTextStyles.titleSmallBluegray700,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 6.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightGray90003,
                    height: 24.h,
                    width: 24.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOffersSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 170.h,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  },
                ),
                itemCount: controller
                    .homeInitialModelObj.value.slideruptoItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  SlideruptoItemModel model = controller.homeInitialModelObj
                      .value.slideruptoItemList.value[index];
                  return InkWell(
                    onTap: () {
                      // Navigate to OfferScreen with necessary data (if any)
                      Get.to(
                        () => OfferZoneScreen(),
                        binding: OfferZoneBinding(),
                      );
                    },
                    child: SlideruptoItemWidget(
                      model,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Obx(
            () => SizedBox(
              height: 6.h,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.sliderIndex.value,
                count: controller
                    .homeInitialModelObj.value.slideruptoItemList.value.length,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 12.84,
                  activeDotColor: appTheme.gray90003,
                  dotColor: appTheme.blueGray90003,
                  dotHeight: 6.h,
                  dotWidth: 6.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  /// Section Widget
  Widget _buildLimitedTimeDeals() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_limited_time_deals".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 22.h.h),
          Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15.h,
                  );
                },
                itemCount: controller.homeInitialModelObj.value
                    .listfacewashItemList.value.length,
                itemBuilder: (context, index) {
                  ListaccucheckItemModel model = controller.homeInitialModelObj
                      .value.listaccucheckItemModel.value[index];
                  return ListaccucheckItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExploreSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 2.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: Divider(
                              color: appTheme.gray600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_explore".tr,
                            style: CustomTextStyles.titleMediumGray600,
                          ),
                        ),
                        SizedBox(
                          width: 8.h,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: Divider(
                              color: appTheme.gray600,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    child: Obx(
                      () => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            controller.homeInitialModelObj.value
                                .gridnutritionalItemModel.value.length,
                            (index) {
                              if (index >=
                                  controller.homeInitialModelObj.value
                                      .gridnutritionalItemModel.value.length) {
                                return SizedBox(); // Return an empty widget for safety
                              }
                              GridnutritionalItemModel model = controller
                                  .homeInitialModelObj
                                  .value
                                  .gridnutritionalItemModel
                                  .value[index];
                              return Padding(
                                padding: EdgeInsets.only(right: 8.h),
                                child: SizedBox(
                                  width: 100.h,
                                  height: 150.h,
                                  child: GridNutritionalItemWidget(model),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExploreNutrition() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // SizedBox(
                  //   height: 14.h,
                  // ),
                  // Text(
                  //   "lbl_all_products".tr,
                  //   style: CustomTextStyles.titleMediumSemiBold,

                  width: double.maxFinite,
                  child: Text(
                    "lbl_offer_zone".tr,
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          Container(
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    controller.homeInitialModelObj.value.listfacewashItemList
                        .value.length,
                    (index) {
                      if (index >=
                          controller.homeInitialModelObj.value
                              .listfacewashItemList.value.length) {
                        return SizedBox(); // Return an empty widget for safety
                      }
                      ListFaceWashItemModel model = controller
                          .homeInitialModelObj
                          .value
                          .listfacewashItemList
                          .value[index];
                      return Padding(
                        padding: EdgeInsets.only(right: 0.h),
                        child: SizedBox(
                          width: 90.h,
                          child: ListfaceWashItemWidget(model),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 316.h,
            child: Text(
              "msg_lorem_ipsum_dolor".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallRobotoPrimaryContainer.copyWith(
                height: 1.43,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget _buildExploreSection() {
  //   return Container(
  //     width: double.maxFinite,
  //     margin: EdgeInsets.symmetric(horizontal: 10.h),
  //     child: Column(
  //       children: [
  //         SizedBox(
  //           width: double.maxFinite,
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "lbl_offer_zone".tr,
  //                 style: CustomTextStyles.titleMediumGray90005SemiBold,
  //               ),
  //               SizedBox(
  //                 height: 26.h,
  //               ),
  //               Container(
  //                 width: double.maxFinite,
  //                 child: Obx(
  //                   () => SingleChildScrollView(
  //                     scrollDirection: Axis.horizontal,
  //                     child: Wrap(
  //                       direction: Axis.horizontal,
  //                       spacing: 6.h,
  //                       children: List.generate(
  //                         controller.homeInitialModelObj.value
  //                             .listfacewashItemList.value.length,
  //                         (index) {
  //                           ListFaceWashItemModel model = controller
  //                               .homeInitialModelObj
  //                               .value
  //                               .listfacewashItemList
  //                               .value[index];
  //                           return ListfaceWashItemWidget(
  //                             model,
  //                           );
  //                         },
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //         SizedBox(
  //           height: 30.h,
  //         ),
  //         SizedBox(
  //           width: double.maxFinite,
  //           child: Column(
  //             children: [
  //               Container(
  //                 width: double.maxFinite,
  //                 margin: EdgeInsets.only(
  //                   left: 2.h,
  //                   right: 12.h,
  //                 ),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Align(
  //                       alignment: Alignment.center,
  //                       child: Text(
  //                         "msg_medical_services".tr,
  //                         style: CustomTextStyles.titleMediumLatoBlack900,
  //                       ),
  //                     ),
  //                     Text(
  //                       "lbl_view_all".tr,
  //                       style: CustomTextStyles.labelLargeLatoOnErrorContainer,
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 14.h,
  //               ),
  //               Container(
  //                 width: double.maxFinite,
  //                 padding: EdgeInsets.symmetric(
  //                   horizontal: 14.h,
  //                   vertical: 12.h,
  //                 ),
  //                 decoration: BoxDecoration(
  //                   color: appTheme.whiteA700,
  //                   borderRadius: BorderRadiusStyle.roundedBorder6,
  //                 ),
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   crossAxisAlignment: CrossAxisAlignment.end,
  //                   children: [
  //                     SizedBox(
  //                       height: 8.h,
  //                     ),
  //                     SizedBox(
  //                       width: double.maxFinite,
  //                       child: _buildRowplayThree(
  //                         titleThree: "msg_yay_you_have_a".tr,
  //                         durationOne: "lbl_2_hours_ago".tr,
  //                       ),
  //                     ),
  //                     CustomImageView(
  //                       imagePath: ImageConstant.imgArrowRightOnerror1,
  //                       height: 10.h,
  //                       width: 8.h,
  //                     ),
  //                     SizedBox(
  //                       width: double.maxFinite,
  //                       child: _buildRowplayThree(
  //                         titleThree: "msg_congratulations".tr,
  //                         durationOne: "lbl_2_hours_ago".tr,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 24.h,
  //               ),
  //               Container(
  //                 width: double.maxFinite,
  //                 padding: EdgeInsets.symmetric(
  //                   horizontal: 16.h,
  //                   vertical: 8.h,
  //                 ),
  //                 decoration: BoxDecoration(
  //                   color: appTheme.gray4002b,
  //                   borderRadius: BorderRadiusStyle.roundedBorder10,
  //                 ),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: [
  //                     SizedBox(
  //                       height: 2.h,
  //                     ),
  //                     Container(
  //                       width: double.maxFinite,
  //                       margin: EdgeInsets.only(right: 6.h),
  //                       child: Row(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Expanded(
  //                             child: Padding(
  //                               padding: EdgeInsets.only(bottom: 10.h),
  //                               child: Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   RichText(
  //                                     text: TextSpan(
  //                                       children: [
  //                                         TextSpan(
  //                                           text: "lbl_grab_your".tr,
  //                                           style: CustomTextStyles
  //                                               .titleSmallLatoIndigo900,
  //                                         ),
  //                                         TextSpan(
  //                                           text: "lbl_insurance".tr,
  //                                           style: CustomTextStyles
  //                                               .titleSmallLatoIndigo900Bold,
  //                                         ),
  //                                         TextSpan(
  //                                           text: "lbl_offer_today".tr,
  //                                           style: CustomTextStyles
  //                                               .titleSmallLatoIndigo900,
  //                                         ),
  //                                       ],
  //                                     ),
  //                                     textAlign: TextAlign.left,
  //                                   ),
  //                                   SizedBox(
  //                                     height: 2.h,
  //                                   ),
  //                                   RichText(
  //                                     text: TextSpan(
  //                                       children: [
  //                                         TextSpan(
  //                                           text: "msd_get_25_off_your2".tr,
  //                                           style: CustomTextStyles
  //                                               .labelMediumLatoBlack90001_1,
  //                                         ),
  //                                         TextSpan(
  //                                           text: "msg_health_insurance".tr,
  //                                           style: CustomTextStyles
  //                                               .labelMediumLatoBlack90001,
  //                                         ),
  //                                         TextSpan(
  //                                           text: "msd_renewals_with_us".tr,
  //                                           style: CustomTextStyles
  //                                               .labelMediumLatoBlack90001_1,
  //                                         ),
  //                                         TextSpan(
  //                                           text: "msg_protect_your_family".tr,
  //                                           style: CustomTextStyles
  //                                               .labelMediumLatoBlack90001Bold,
  //                                         ),
  //                                       ],
  //                                     ),
  //                                     textAlign: TextAlign.left,
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                           CustomImageView(
  //                             imagePath: ImageConstant.imgSettingsIndigo9001,
  //                             height: 52.h,
  //                             width: 54.h,
  //                             alignment: Alignment.bottomCenter,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 6.h,
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       mainAxisSize: MainAxisSize.min,
  //                       children: [
  //                         CustomImageView(
  //                           imagePath: ImageConstant.imgPlayIndigo900,
  //                           height: 6.h,
  //                           width: 6.h,
  //                         ),
  //                         SizedBox(
  //                           width: 6.h,
  //                         ),
  //                         CustomImageView(
  //                           imagePath: ImageConstant.imgMobile,
  //                           height: 6.h,
  //                           width: 6.h,
  //                         ),
  //                         SizedBox(
  //                           width: 6.h,
  //                         ),
  //                         CustomImageView(
  //                           imagePath: ImageConstant.imgMobile,
  //                           height: 6.h,
  //                           width: 6.h,
  //                         ),
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
