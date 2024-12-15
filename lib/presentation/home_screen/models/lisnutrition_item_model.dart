import '../../../core/app_export.dart';

class ListnutritionItemModel {
  ListnutritionItemModel({this.nutritional, this.nutritional1, this.id}) {
    nutritional = nutritional ?? Rx(ImageConstant.imgImage3);
    nutritional1 = nutritional1 ?? Rx("Nutritional Drinks");
    id = id ?? Rx("");
  }

  Rx<String>? nutritional;

  Rx<String>? nutritional1;

  Rx<String>? id;
}
