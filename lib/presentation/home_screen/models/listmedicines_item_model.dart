import '../../../core/app_export.dart';

/// This class is used in the [listmedicines_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListmedicinesItemModel {
  ListmedicinesItemModel(
      {this.medicinesOne, this.medicinesThree, this.medicinesFour, this.id}) {
    medicinesOne = medicinesOne ?? Rx(ImageConstant.imgEllipse7);
    medicinesThree = medicinesThree ?? Rx(ImageConstant.imgClose);
    medicinesFour = medicinesFour ?? Rx("Medicines");
    id = id ?? Rx("");
  }

  Rx<String>? medicinesOne;

  Rx<String>? medicinesThree;

  Rx<String>? medicinesFour;

  Rx<String>? id;
}
