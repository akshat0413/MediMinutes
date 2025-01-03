import 'package:mediminutes/core/app_export.dart';

class MedicineItemListModel {
  MedicineItemListModel(
      {this.medicineImage,
      this.price,
      this.tabletsCounter,
      this.dolo650Tablet,
      this.mrp34eighty,
      this.offer,
      //this.mrp220zero,
      this.offerOne,
      this.mediminutesTwo,
      this.id}) {
    medicineImage = medicineImage ?? Rx(ImageConstant.imgBuyParacetamol3);
    price = price ?? Rx("₹ 30.00");
    tabletsCounter = tabletsCounter ?? Rx("15 tablets");
    dolo650Tablet = dolo650Tablet ?? Rx("Dolo 650 Tablet");
    mrp34eighty = mrp34eighty ?? Rx("MRP : 33.80");
    offer = offer ?? Rx("10% off");
    // mrp220zero = mrp220zero ?? Rx("MRP : 220.00");
    offerOne = offerOne ?? Rx("17% off with");
    mediminutesTwo = mediminutesTwo ?? Rx("Mediminutes");
    id = id ?? Rx("");
  }

  Rx<String>? medicineImage;

  Rx<String>? price;

  Rx<String>? tabletsCounter;

  Rx<String>? dolo650Tablet;

  Rx<String>? mrp34eighty;

  Rx<String>? offer;

  //Rx<String>? mrp220zero;

  Rx<String>? offerOne;

  Rx<String>? mediminutesTwo;

  Rx<String>? id;
}
