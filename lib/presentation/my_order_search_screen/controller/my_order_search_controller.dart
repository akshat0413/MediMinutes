import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/my_order_search_model.dart';

///A controller class for the HomeScreen.
///
///This class manaages the state of the HomeScreen, includeing the
///current homeModelObj
class MyOrderSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MyOrderSearchModel> homeModelObj = MyOrderSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
