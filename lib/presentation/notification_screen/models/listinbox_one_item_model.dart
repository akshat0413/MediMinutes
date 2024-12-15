import '../../../core/app_export.dart';

class ListinboxOneItemModel {
  ListinboxOneItemModel(
      {this.image, this.price, this.headerlist, this.weight, this.id}) {
    image = image ?? Rx(ImageConstant.imgCart);
    price = price ?? Rx("Thu, 11 May 2023 | 16:00");
    headerlist = headerlist ?? Rx("your medicine has arrived!");
    weight = weight ?? Rx("Am");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? price;

  Rx<String>? headerlist;

  Rx<String>? weight;

  Rx<String>? id;
}
