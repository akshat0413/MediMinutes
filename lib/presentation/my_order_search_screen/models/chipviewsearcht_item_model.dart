import '../../../core/app_export.dart';

/// This class is used in the [chipviewsearcht2_item_widget] screen,

/// ignore_for_file: must_be_immutable
class Chipviewsearcht2ItemModel {
  Chipviewsearcht2ItemModel(
      {this.searchtags, this.searchtags1, this.isSelected}) {
    searchtags = searchtags ?? Rx("Paracetamol");
    searchtags1 = searchtags1 ?? Rx("Paracetamol");
    isSelected = isSelected ?? Rx(false);
  }

  Rx<String>? searchtags;

  Rx<String>? searchtags1;

  Rx<bool>? isSelected;
}