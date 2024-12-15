import '../../../core/app_export.dart';

class GridnutritionalItemModel {
  GridnutritionalItemModel({this.image, this.nutritional, this.id}) {
    image = image ?? Rx(ImageConstant.imgImage3);
    nutritional = nutritional ?? Rx("Nutritional Drinks");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? nutritional;

  Rx<String>? id;
}
