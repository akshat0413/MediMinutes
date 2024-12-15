import 'package:flutter/material.dart';
import 'package:mediminutes/theme/custom_text_style.dart';
import '../../../core/app_export.dart';
import '../models/consultationlist_item_model.dart';

// ignore_for_file: must_be_immutable
class ConsultationlistItemWidget extends StatelessWidget {
  ConsultationlistItemWidget(this.consultationlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ConsultationlistItemModel consultationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 4.h,
            ),
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              color: appTheme.gray300,
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 26.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.gray300,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath:
                            consultationlistItemModelObj.consultation!.value,
                        height: 26.h,
                        width: 26.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            consultationlistItemModelObj.consultation1!.value,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBluegray90004,
          )
        ],
      ),
    );
  }
}
