import '../../../core/app_export.dart';
import 'chipviewsearcht2_item_model.dart';
import 'chipviewsearcht_item_model.dart';

///This class defines the varibles used in the [my_order_search_search_screen],
///and is typically used to hold data that is passed btw different parts of the application.
///
///ignore_for_file: must_be_immutable
class MyOrderSearchModel {
  Rx<List<ChipviewsearchtItemModel>> chipviewsearchItemList = Rx([
    ChipviewsearchtItemModel(searchtags: "paracetamol".obs),
    ChipviewsearchtItemModel(searchtags: "paracetamol".obs),
    ChipviewsearchtItemModel(searchtags: "pacemol".obs),
    ChipviewsearchtItemModel(searchtags: "paracetamol".obs),
    ChipviewsearchtItemModel(searchtags: "Dolo".obs),
    ChipviewsearchtItemModel(searchtags: "paracetamol".obs),
    ChipviewsearchtItemModel(searchtags: "paracetamol".obs),
  ]);

  Rx<List<Chipviewsearcht2ItemModel>> chipviewsearcht2ItemList = Rx([
    Chipviewsearcht2ItemModel(searchtags: "MediMinutes".obs),
    Chipviewsearcht2ItemModel(searchtags: "Pharmacy".obs),
    Chipviewsearcht2ItemModel(searchtags: "Pharmacy".obs),
    Chipviewsearcht2ItemModel(searchtags: "Pharmacy".obs),
    Chipviewsearcht2ItemModel(searchtags: "discounted items".obs),
  ]);
}
