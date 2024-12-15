import '../../../core/app_export.dart';

/// This class is used in the [categoryitems_item_widget] screen.

class CategoryitemsItemModel {
  CategoryitemsItemModel({this.sugar, this.sugar1, this.id}) {
    sugar = sugar ?? Rx(ImageConstant.imgSugar);
    sugar1 = sugar1 ?? Rx("Sugar \nSubtitude");
    id = id ?? Rx("");
  }

  Rx<String>? sugar;

  Rx<String>? sugar1;

  Rx<String>? id;
}
