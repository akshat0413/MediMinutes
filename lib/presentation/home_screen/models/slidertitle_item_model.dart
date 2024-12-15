import '../../../core/app_export.dart';

/// This class is used in the [slidertitle_item_widget] screen.

// ignore_for_file: must_be_immutable
class SlidertitleItemModel {
  SlidertitleItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
