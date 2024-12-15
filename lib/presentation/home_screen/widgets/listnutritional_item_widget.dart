import 'package:flutter/material.dart';
import '../models/lisnutrition_item_model.dart';
import 'package:mediminutes/presentation/home_screen/controller/home_controller.dart';
import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class ListnutritionalItemWidget extends StatelessWidget {
  ListnutritionalItemWidget(this.listnutritionalItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListnutritionItemModel listnutritionalItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 108.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder18,
            border: Border.all(
              color: appTheme.gray20002,
              width: 0.91.h,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: listnutritionalItemModelObj.nutritional!.value,
                height: 76.h,
                width: 78.h,
              )
            ],
          ),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: 62.h,
          child: Obx(
            () => Text(
              listnutritionalItemModelObj.nutritional1!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.07,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
