import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/notification_screen/controller/notification_controller.dart';

import '../models/listinbox_one_item_model.dart';

class ListinboxOneItemWidget extends StatelessWidget {
  ListinboxOneItemWidget(this.listinboxOneItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListinboxOneItemModel listinboxOneItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: listinboxOneItemModelObj.image!.value,
                  height: 24.h,
                  width: 24.h,
                ),
              ),
              SizedBox(
                width: 15.h,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          listinboxOneItemModelObj.price!.value,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Obx(
                        () => Text(
                          listinboxOneItemModelObj.headerlist!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Obx(
                        () => Text(
                          listinboxOneItemModelObj.weight!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
