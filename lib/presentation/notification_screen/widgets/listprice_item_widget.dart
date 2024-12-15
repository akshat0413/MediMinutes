import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/notification_screen/controller/notification_controller.dart';
import 'package:mediminutes/presentation/notification_screen/models/listprice_item_model.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListpriceItemModel listpriceItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: listpriceItemModelObj.image!.value,
              height: 24.h,
              width: 24.h,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      listpriceItemModelObj.price!.value,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Obx(
                    () => Text(
                      listpriceItemModelObj.headerlist!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Obx(
                    () => Text(
                      listpriceItemModelObj.weight!.value,
                      style: theme.textTheme.bodySmall,
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
}
