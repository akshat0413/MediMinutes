import '../../../core/app_export.dart';

class ProductgridItemModel {
  ProductgridItemModel({
    this.image,
    this.productname,
    this.rsCounter,
    this.rsCounterOne,
    this.location,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgFishOil);
    productname = productname ?? Rx("Fish Oil Omega 3 Supplement");
    rsCounter = rsCounter ?? Rx("Rs 75.00");
    rsCounterOne = rsCounterOne ?? Rx("Rs 150.000");
    location = location ?? Rx("Bareilly");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? productname;

  Rx<String>? rsCounter;

  Rx<String>? rsCounterOne;

  Rx<String>? location;

  Rx<String>? id;
}
