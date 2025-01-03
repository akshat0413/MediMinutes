import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';

class PharmacyListItemModel {
  PharmacyListItemModel(
      {this.minsOne,
      this.minsThree,
      this.time,
      this.distance,
      this.mediminutes,
      this.minsFive,
      this.minsSeven,
      this.id}) {
    minsOne = minsOne ?? Rx(ImageConstant.imgPharmacy1);
    minsThree = minsThree ?? Rx(ImageConstant.imgClockPharma);
    time = time ?? Rx("10 mins");
    distance = distance ?? Rx("2 km");
    //mediminutes = mediminutes ?? Rx(ImageConstant.imgUntiledDesignBlack900);
    minsSeven = minsSeven ?? Rx(Icon(Icons.bookmark_add));
    id = id ?? Rx("");
  }

  Rx<String>? minsOne;

  Rx<String>? minsThree;

  Rx<String>? time;

  Rx<String>? distance;

  Rx<String>? mediminutes;

  Rx<String>? minsFive;

  Rx<Icon>? minsSeven;

  Rx<String>? id;
}
