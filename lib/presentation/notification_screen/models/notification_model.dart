import 'package:mediminutes/presentation/notification_screen/models/listtags_item_model.dart';

import '../../../core/app_export.dart';
import 'listinbox_one_item_model.dart';
import 'listprice_item_model.dart';

class NotificationModel {
  Rx<List<ListtagsItemModel>> listtagsItemList = Rx([
    ListtagsItemModel(tags: "All".obs),
    ListtagsItemModel(tags: "Medicine Reminder".obs),
    ListtagsItemModel(tags: "Pusrchase".obs)
  ]);

  Rx<List<ListpriceItemModel>> listpriceItemList = Rx([
    ListpriceItemModel(
        image: ImageConstant.imgDrug.obs,
        price: "Fri, 12 May 2023 | 12:00".obs,
        headerlist: "It's time to take your medicine!".obs,
        weight: "Amoxicillin 500mg".obs),
    ListpriceItemModel(
        image: ImageConstant.imgCart.obs,
        price: "Fri, 12 May 2023 | 10:00".obs,
        headerlist: "Your medicine has arrived!".obs,
        weight: "Lansoprazole 30mg (capsule)".obs),
    ListpriceItemModel(
        image: ImageConstant.imgDrug.obs,
        price: "Fri, 12 May 2023 | 09:00".obs,
        headerlist: "It's time to take your medicine!".obs,
        weight: "Amoxicillin 500mg".obs),
  ]);

  Rx<List<ListinboxOneItemModel>> listinboxOneItemList = Rx([
    ListinboxOneItemModel(
        image: ImageConstant.imgCart.obs,
        price: "Fri, 11 May 2023 | 16:00".obs,
        headerlist: "Your medicine has arrived!".obs,
        weight: "Amoxicillin 500mg".obs),
    ListinboxOneItemModel(
        image: ImageConstant.imgTime.obs,
        price: "Fri, 11 May 2023 | 06:00".obs,
        headerlist: "Can we drink medicine with milk?".obs,
        weight: "Lansoprazole 30mg (capsule)".obs),
    ListinboxOneItemModel(
        image: ImageConstant.imgDrug.obs,
        price: "Fri, 11 May 2023 | 08:00".obs,
        headerlist: "It's time to take your medicine!".obs,
        weight: "Paracetamol 500mg".obs),
  ]);
}
