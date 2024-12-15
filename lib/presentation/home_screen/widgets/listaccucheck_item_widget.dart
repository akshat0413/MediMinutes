import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listaccucheck_item_model.dart';

// ignore_for_file: must_be_immutable
class ListaccucheckItemWidget extends StatelessWidget {
  ListaccucheckItemWidget(this.listaccucheckItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListaccucheckItemModel listaccucheckItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 108.h,
          width: 108.h,
          radius: BorderRadius.circular(
            14.h,
          ),
        ),
        SizedBox(width: 14.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listaccucheckItemModelObj.accucheck!.value,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.h),
              Text(
                listaccucheckItemModelObj.descriptionduis!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                  height: 1.52,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6.h),
              CustomElevatedButton(
                height: 32.h,
                width: 108.h,
                text: "lbl_add_to_cart".tr,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              )
            ],
          ),
        )
      ],
    );
  }
}
