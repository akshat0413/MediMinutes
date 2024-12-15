import '../../../core/app_export.dart';

class ListFaceWashItemModel {
  ListFaceWashItemModel({this.faceWashOne, this.label, this.id}) {
    faceWashOne = faceWashOne ?? Rx(ImageConstant.imgImage84x84);
    label = label ?? Rx("Face Wash");
    id = id ?? Rx("Face Wash");
  }

  Rx<String>? faceWashOne;

  Rx<String>? label;

  Rx<String>? id;
}
