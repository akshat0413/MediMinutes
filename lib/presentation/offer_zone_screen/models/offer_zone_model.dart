import '../../../core/app_export.dart';
import 'categoryitems_item_model.dart';
import 'productgrid_item_model.dart';

class OfferZoneModel {
  Rx<List<CategoryitemsItemModel>> categoryitemsItemList = Rx([
    CategoryitemsItemModel(
        sugar: ImageConstant.imgSugar.obs, sugar1: "Sugar \nSubstitute".obs),
    CategoryitemsItemModel(
        sugar: ImageConstant.imgJucies.obs, sugar1: "Juices & \nVinegars".obs),
    CategoryitemsItemModel(
        sugar: ImageConstant.imgVitamins.obs,
        sugar1: "Vitamins \nMedicines".obs),
  ]);
  Rx<List<ProductgridItemModel>> productgrifItemList = Rx([
    ProductgridItemModel(
        image: ImageConstant.imgFishOil.obs,
        productname: "Fish Oil Omega 3 Supplement".obs,
        rsCounter: "Rs 750.00".obs,
        rsCounterOne: "Rs 1500.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgParacetamol.obs,
        productname: "Paracetamol 500mg".obs,
        rsCounter: "Rs 75.00".obs,
        rsCounterOne: "Rs 15.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgFishOil.obs,
        productname: "Fish Oil Omega 3 Supplement".obs,
        rsCounter: "Rs 750.00".obs,
        rsCounterOne: "Rs 1500.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgParacetamol.obs,
        productname: "Paracetamol 500mg".obs,
        rsCounter: "Rs 75.00".obs,
        rsCounterOne: "Rs 150.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgParacetamol.obs,
        productname: "Paracetamol 500mg".obs,
        rsCounter: "Rs 75.00".obs,
        rsCounterOne: "Rs 150.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgFishOil.obs,
        productname: "Fish Oil Omega 3 Supplement".obs,
        rsCounter: "Rs 750.00".obs,
        rsCounterOne: "Rs 1500.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgParacetamol.obs,
        productname: "Paracetamol 500mg".obs,
        rsCounter: "Rs 75.00".obs,
        rsCounterOne: "Rs 150.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgFishOil.obs,
        productname: "Fish Oil Omega 3 Supplement".obs,
        rsCounter: "Rs 750.00".obs,
        rsCounterOne: "Rs 1500.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgParacetamol.obs,
        productname: "Paracetamol 500mg".obs,
        rsCounter: "Rs 75.00".obs,
        rsCounterOne: "Rs 150.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgFishOil.obs,
        productname: "Fish Oil Omega 3 Supplement".obs,
        rsCounter: "Rs 750.00".obs,
        rsCounterOne: "Rs 1500.00".obs,
        location: "Bareilly".obs),
    ProductgridItemModel(
        image: ImageConstant.imgParacetamol.obs,
        productname: "Paracetamol 500mg".obs,
        rsCounter: "Rs 75.00".obs,
        rsCounterOne: "Rs 150.00".obs,
        location: "Bareilly".obs),
  ]);
}
