import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/offer_zone_screen/controller/offer_zone_controller.dart';
import 'package:mediminutes/presentation/offer_zone_screen/models/productgrid_item_model.dart';
import 'package:mediminutes/widgets/custom_outlined_button.dart';

import '../../../routes/app_routes.dart';

// ignore: must_be_immutable
class ProductgridItemWidget extends StatelessWidget {
  ProductgridItemWidget(this.productgridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProductgridItemModel productgridItemModelObj;

  var controller = Get.find<OfferZoneController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.buyScreen);
      },
      child: Card(
        elevation: 3,
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: productgridItemModelObj.image!.value,
                  height: 128.h,
                  width: double.maxFinite,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 144.h,
                margin: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    productgridItemModelObj.productname!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    productgridItemModelObj.rsCounter!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                //width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                child: Row(
                  children: [
                    _buildDiscountBadge(),
                    SizedBox(width: 4.h), // Use SizedBox instead of padding
                    Flexible(
                      child: Obx(
                        () => Text(
                          productgridItemModelObj.rsCounterOne!.value,
                          style: CustomTextStyles.bodySmallGray50002
                              .copyWith(decoration: TextDecoration.lineThrough),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLoaction,
                      height: 12.h,
                      width: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          productgridItemModelObj.location!.value,
                          style: CustomTextStyles.bodySmallGray50002,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///Section Widget
  Widget _buildDiscountBadge() {
    return CustomOutlinedButton(
      height: 20.h,
      width: 40.h,
      text: "lbl_50".tr,
      buttonStyle: CustomButtonStyles.outlineRed,
      buttonTextStyle: CustomTextStyles.bodySmallRed500,
    );
  }
}
