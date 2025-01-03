import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/search_screen/models/search_screen_tab_model.dart';
import 'package:mediminutes/presentation/search_screen/search_screen_tab_page.dart';
import '../../../core/app_export.dart';
import '../models/search_screen_model.dart';

///A controller class for the HomeScreen.
///
///This class manaages the state of the HomeScreen, includeing the
///current homeModelObj
class SearchScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchScreenController = TextEditingController();

  Rx<SearchScreenModel> searchScreenModelObj = SearchScreenModel().obs;

  late TabController tabviewController;

  Rx<SearchScreenTabModel> searchScreenTabModelObj = SearchScreenTabModel().obs;

  @override
  void onInit() {
    super.onInit();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    searchScreenController.dispose();
    tabviewController.dispose();
    super.onClose();
  }
}
