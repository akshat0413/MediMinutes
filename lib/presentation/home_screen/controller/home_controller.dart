import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/home_screen/models/home_model.dart';
import '../../../core/app_export.dart';
import '../models/home_initial_model.dart';

///A controller class for the HomeScreen.
///
///This class manaages the state of the HomeScreen, includeing the
///current homeModelObj
class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeInitialModel> homeInitialModelObj = HomeInitialModel().obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  void onInit() {
    super.onInit();
    print("HomeController initialized");
  }
}
