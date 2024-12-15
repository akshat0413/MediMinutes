import '../../../core/app_export.dart';

class ListtagsItemModel {
  ListtagsItemModel({this.tags, this.id}) {
    tags = tags ?? Rx("All");
    id = id ?? Rx("");
  }

  Rx<String>? tags;

  Rx<String>? id;
}
