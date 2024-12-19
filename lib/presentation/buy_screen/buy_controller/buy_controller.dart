import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../buy_models/buy_model.dart';

///A controller class for the HomeScreen.
///
///This class manaages the state of the HomeScreen, includeing the
///current homeModelObj
class BuyController extends GetxController {
  Rx<BuyModel> cartModelObj = BuyModel().obs;
  RxInt quantity = 0.obs;
}
