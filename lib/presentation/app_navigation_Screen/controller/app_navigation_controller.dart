import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediminutes/presentation/app_navigation_Screen/models/app_navigation_model.dart';
import '../../../core/app_export.dart';
//import '../models/app_navigation_model.dart';

/// A controller class for the AppNavigationScreen.
///
/// This Class manages the state of the AppNavigationScreen, including the current appNavigationModelObj
class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNaviagtionModelObj = AppNavigationModel().obs;
}
