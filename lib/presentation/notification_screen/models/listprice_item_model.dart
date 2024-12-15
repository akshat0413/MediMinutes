import '../../../core/app_export.dart';

class ListpriceItemModel {
  ListpriceItemModel(
      {this.image, this.price, this.headerlist, this.weight, this.id}) {
    image = image ?? Rx(ImageConstant.imgDrug);
    price = price ?? Rx("Fri, 121 May 2023 | 12:00");
    headerlist = headerlist ?? Rx("It's time to take your medicine!");
    weight = weight ?? Rx("Amoxicillin 500mg");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? price;

  Rx<String>? headerlist;

  Rx<String>? weight;

  Rx<String>? id;
}
