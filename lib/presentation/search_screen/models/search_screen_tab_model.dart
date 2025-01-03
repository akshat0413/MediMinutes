import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/search_screen/models/medicine_item_list_model.dart';
import 'package:mediminutes/presentation/search_screen/widgets/pharmacy_list_item_widget.dart.dart';

import 'pharmacy_list_item_model.dart';

class SearchScreenTabModel {
  Rx<List<PharmacyListItemModel>> pharmacylistItemList = Rx([
    PharmacyListItemModel(
      minsOne: ImageConstant.imgPharmacy1.obs,
      minsThree: ImageConstant.imgClockPharma.obs,
      time: "10 mins".obs,
      distance: "2 km".obs,
      mediminutes: "MediMinutes Pharmacy".obs,
      // minsFive: ImageConstant.imgUntitleDesignBlack900.obs,
      //  minsSeven: Icon(Icons.bookmark_add),
    ),
    PharmacyListItemModel(
      minsOne: ImageConstant.imgPharmacy2.obs,
      minsThree: ImageConstant.imgClockPharma.obs,
      time: "10 mins".obs,
      distance: "1 km".obs,
      mediminutes: "MediMinutes Pharmacy".obs,
      // minsFive: ImageConstant.imgUntitleDesignBlack900.obs,
      //  minsSeven: Icon(Icons.bookmark_add),
    ),
    PharmacyListItemModel(
      minsOne: ImageConstant.imgPharmacy1.obs,
      minsThree: ImageConstant.imgClockPharma.obs,
      time: "10 mins".obs,
      distance: "4 km".obs,
      mediminutes: "MediMinutes Pharmacy".obs,
      // minsFive: ImageConstant.imgUntitleDesignBlack900.obs,
      //  minsSeven: Icon(Icons.bookmark_add),
    ),
    PharmacyListItemModel(
      minsOne: ImageConstant.imgPharmacy2.obs,
      minsThree: ImageConstant.imgClockPharma.obs,
      time: "10 mins".obs,
      distance: "3 km".obs,
      mediminutes: "MediMinutes Pharmacy".obs,
      // minsFive: ImageConstant.imgUntitleDesignBlack900.obs,
      //  minsSeven: Icon(Icons.bookmark_add),
    ),
  ]);

  Rx<List<MedicineItemListModel>> medicinelistItemList = Rx([
    MedicineItemListModel(
      price: "₹ 30.00".obs,
      tabletsCounter: "15 tablets".obs,
      dolo650Tablet: "Dolo 650 Tablet".obs,
      mrp34eighty: "MRP : 33.80".obs,
      offer: "10% off".obs,
      //   mrp220zero: "MRP : 220.00".obs,
      offerOne: "17% off with".obs,
      mediminutesTwo: "Mediminutes".obs,
    ),
    MedicineItemListModel(
      price: "₹ 182.00".obs,
      tabletsCounter: "15 tablets".obs,
      dolo650Tablet: "Doloswin Tablet".obs,
      mrp34eighty: "MRP : 34.80".obs,
      offer: "16% off".obs,
      //   mrp220zero: "MRP : 220.00".obs,
      offerOne: "17% off with".obs,
      mediminutesTwo: "Mediminutes".obs,
    ),
    MedicineItemListModel(
      price: "₹ 20.00".obs,
      tabletsCounter: "15 tablets".obs,
      dolo650Tablet: "Dolopar Tablet".obs,
      mrp34eighty: "MRP : 34.80".obs,
      offer: "16% off".obs,
      //   mrp220zero: "MRP : 220.00".obs,
      offerOne: "17% off with".obs,
      mediminutesTwo: "Mediminutes".obs,
    ),
    MedicineItemListModel(
      price: "₹ 22.00".obs,
      tabletsCounter: "15 tablets".obs,
      dolo650Tablet: "Dolo 650 Tablet".obs,
      mrp34eighty: "MRP : 34.80".obs,
      offer: "16% off".obs,
      //   mrp220zero: "MRP : 220.00".obs,
      offerOne: "17% off with".obs,
      mediminutesTwo: "Mediminutes".obs,
    ),
  ]);
}
