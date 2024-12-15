import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/notification_screen/controller/notification_controller.dart';
import 'package:mediminutes/presentation/notification_screen/models/listtags_item_model.dart';

import '../../../core/app_export.dart';

class ListtagsItemWidget extends StatelessWidget {
  ListtagsItemWidget(this.listtagsItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListtagsItemModel listtagsItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.black90001,
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Obx(
        () => Text(
          listtagsItemModelObj.tags!.value,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.bodyLargeGray20001,
        ),
      ),
    );
  }
}
