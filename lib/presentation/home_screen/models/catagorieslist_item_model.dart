import '../../../core/app_export.dart';

///this class is used in the [categories_item_widget] screen.

//ignore_for_file: must_be_immutable
class CategorieslistItemModel {
  CategorieslistItemModel({this.faceWashOne, this.label, this.id}) {
    faceWashOne = faceWashOne ?? Rx(ImageConstant.imgImage84x84);
    label = label ?? Rx("Face Wash");
    id = id ?? Rx("");
  }

  Rx<String>? faceWashOne;
  Rx<String>? label;
  Rx<String>? id;
}
