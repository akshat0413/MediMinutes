import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/splash_screen/controller/spleshscreen_controller.dart';
import 'package:mediminutes/presentation/splash_screen/models/sliderview_item_model.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class SliderviewItemWidget extends StatelessWidget {
  SliderviewItemWidget(this.sliderviewItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SliderviewItemModel sliderviewItemModelObj;

  var controller = Get.find<SpleshscreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 292.h,
      margin: EdgeInsets.only(left: 20.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 32.h,
              width: 226.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse3,
                height: 40,
                width: double.maxFinite,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgYoungCurlyMan,
            height: 288.h,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
