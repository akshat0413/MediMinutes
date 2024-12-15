import '../../../core/app_export.dart';

/// This class is used in the [listaccucheck_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListaccucheckItemModel {
  ListaccucheckItemModel({this.accucheck, this.descriptionduis, this.id}) {
    accucheck = accucheck ?? Rx("Accu-Check Instant");
    descriptionduis = descriptionduis ??
        Rx("Description duis aute irure dolor in reprehenderit in voluptate velit.");
    id = id ?? Rx("");
  }

  Rx<String>? accucheck;

  Rx<String>? descriptionduis;

  Rx<String>? id;
}
