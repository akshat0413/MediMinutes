import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/home_screen/controller/home_controller.dart';
import 'package:mediminutes/presentation/home_screen/models/gridnutritional_item_model.dart';
import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class GridNutritionalItemWidget extends StatelessWidget {
  GridNutritionalItemWidget(this.gridnutritionalItemModelObj, {Key? key})
      : super(
          key: key,
        );

  GridnutritionalItemModel gridnutritionalItemModelObj;

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
                imagePath: gridnutritionalItemModelObj.image!.value,
                height: 76.h,
                width: 78.h,
              )
            ],
          ),
        ),
        SizedBox(height: 5.h),
        Obx(
          () => Text(
            gridnutritionalItemModelObj.nutritional!.value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall!.copyWith(
              height: 1.07,
            ),
          ),
        ),
      ],
    );
  }
}
