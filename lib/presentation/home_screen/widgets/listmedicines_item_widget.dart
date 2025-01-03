import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listmedicines_item_model.dart';

// ignore_for_file: must_be_immutable
class ListmedicinesItemWidget extends StatelessWidget {
  ListmedicinesItemWidget(this.listmedicinesItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListmedicinesItemModel listmedicinesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.h,
      child: Column(
        children: [
          Container(
            height: 44.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: listmedicinesItemModelObj.medicinesOne!.value,
                  height: 44.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    23.0.h,
                  ),
                ),
                CustomImageView(
                  imagePath: listmedicinesItemModelObj.medicinesThree!.value,
                  height: 24.h,
                  width: 26.h,
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            listmedicinesItemModelObj.medicinesFour!.value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "inter",
              fontSize: 8.fSize,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
