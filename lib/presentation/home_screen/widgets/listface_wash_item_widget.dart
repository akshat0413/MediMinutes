import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listface_wash_item_model.dart';

// ignore_for_file: must_be_immutable
class ListfaceWashItemWidget extends StatelessWidget {
  ListfaceWashItemWidget(this.listfaceWashItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListFaceWashItemModel listfaceWashItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84.h,
      margin: EdgeInsets.only(bottom: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: listfaceWashItemModelObj.faceWashOne!.value,
            height: 84.h,
            width: 84.h,
            radius: BorderRadius.circular(
              14.h,
            ),
          ),
          SizedBox(height: 2.h),
          SizedBox(
            width: 62.h,
            child: Text(
              listfaceWashItemModelObj.label!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          )
        ],
      ),
    );
  }
}
