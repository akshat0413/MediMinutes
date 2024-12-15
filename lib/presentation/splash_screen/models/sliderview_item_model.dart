import '../../../core/app_export.dart';

///This class is used in the [sliderview_item_widget] screen.

//ignore_for_file: mus_be_immutable
class SliderviewItemModel {
  SliderviewItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
