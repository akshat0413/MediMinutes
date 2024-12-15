import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/offer_zone_screen/controller/offer_zone_controller.dart';
import 'package:mediminutes/presentation/offer_zone_screen/models/categoryitems_item_model.dart';

import '../../../core/app_export.dart';

class CategoryitemsItemWidget extends StatelessWidget {
  CategoryitemsItemWidget(this.categoryitemsItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CategoryitemsItemModel categoryitemsItemModelObj;

  var controller = Get.find<OfferZoneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.h,
      decoration: BoxDecoration(
        color: appTheme.gray40014,
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: categoryitemsItemModelObj.sugar!.value,
              height: 90.h,
              width: double.maxFinite,
              radius: BorderRadius.vertical(
                top: Radius.circular(8.h),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Obx(
            () => Text(
              categoryitemsItemModelObj.sugar1!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallPoppinsOnErrorContainer.copyWith(
                height: 1.38,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
