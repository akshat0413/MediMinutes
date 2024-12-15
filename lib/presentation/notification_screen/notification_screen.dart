import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/home_screen/widgets/listnutritional_item_widget.dart';
import 'package:mediminutes/presentation/notification_screen/models/listinbox_one_item_model.dart';
import 'package:mediminutes/presentation/notification_screen/models/listprice_item_model.dart';
import 'package:mediminutes/presentation/notification_screen/models/listtags_item_model.dart';
import 'package:mediminutes/presentation/notification_screen/widgets/listprice_item_widget.dart';
import 'package:mediminutes/presentation/notification_screen/widgets/listtags_item_widget.dart';
import 'package:mediminutes/widgets/app_bar/appbar_leading_image.dart';
import 'package:mediminutes/widgets/app_bar/appbar_title.dart';
import 'package:mediminutes/widgets/app_bar/custom_app_bar.dart';

import 'controller/notification_controller.dart';
import 'widgets/listinbox_one_item_widget.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key})
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
          padding: EdgeInsets.only(top: 22.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildTodaySection(),
              SizedBox(height: 12.h),
              _buildYesterdaySection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
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
        text: "lbl_notifications".tr,
      ),
      styleType: Style.bgFillGreen200,
    );
  }

  ///Section Widget
  Widget _buildTodaySection() {
    return SizedBox(
      height: 330.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50.h,
              width: 390.h,
              margin: EdgeInsets.only(top: 12.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.gray5002,
                    appTheme.gray5002.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicWidth(
                  child: Container(
                    child: Obx(
                      () => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          direction: Axis.horizontal,
                          spacing: 12.h,
                          children: List.generate(
                            controller.notificationModelObj.value
                                .listtagsItemList.value.length,
                            (index) {
                              ListtagsItemModel model = controller
                                  .notificationModelObj
                                  .value
                                  .listtagsItemList
                                  .value[index];
                              return ListtagsItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 32.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'lbl_today'.tr,
                  style: CustomTextStyles.titleLargeBluegray90003,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.h),
                  child: Obx(
                    () => ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 26.h,
                        );
                      },
                      itemCount: controller.notificationModelObj.value
                          .listpriceItemList.value.length,
                      itemBuilder: (context, index) {
                        ListpriceItemModel model = controller
                            .notificationModelObj
                            .value
                            .listpriceItemList
                            .value[index];
                        return ListpriceItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYesterdaySection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_yesterday".tr,
                  style: CustomTextStyles.titleLargeBluegray90003,
                ),
                SizedBox(height: 18.h),
                Padding(
                  padding: EdgeInsets.only(right: 30.h),
                  child: Obx(
                    () => ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 26.h,
                        );
                      },
                      itemCount: controller.notificationModelObj.value
                          .listinboxOneItemList.value.length,
                      itemBuilder: (context, index) {
                        ListinboxOneItemModel model = controller
                            .notificationModelObj
                            .value
                            .listinboxOneItemList
                            .value[index];
                        return ListinboxOneItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigaties to the preivous screen
  onTapArrowleftone() {
    Get.back();
  }
}
