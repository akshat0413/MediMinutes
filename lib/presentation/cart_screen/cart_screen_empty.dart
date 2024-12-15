import 'package:flutter/material.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/cart_controller.dart';

class CartScreenEmpty extends GetWidget<CartController> {
  const CartScreenEmpty({Key? key})
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
            left: 22.h,
            top: 136.h,
            right: 22.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildEmptyCartSection()],
          ),
        ),
      ),
    );
  }

  ///Section Widget
  PreferredSizeWidget _buildHeader() {
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
      title: AppbarTitle(
        text: "lbl_cart".tr,
      ),
      styleType: Style.bgFillGreen200,
    );
  }

  /// Section Widget
  Widget _buildEmptyCartSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEmptyCart,
            height: 168.h,
            width: 154.h,
          ),
          SizedBox(height: 32.h),
          Text(
            'msg_there_s_nothing'.tr,
            style: CustomTextStyles.titleLargePoppinsBluegray90003,
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'msg_let_s_fill_your'.tr,
              style: CustomTextStyles.bodyMediumInterBluegray9000315,
            ),
          ),
          SizedBox(height: 24.h),
          CustomElevatedButton(
            height: 52.h,
            text: "lbl_start_shopping".tr,
            margin: EdgeInsets.only(
              left: 56.h,
              right: 48.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the previous screen
  onTapArrowleftone() {
    Get.back();
  }
}
