import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/order_place_model.dart';

///A controller class for the OrderPlaceScreen.
///
///This class manaages the state of the OrderPlaceScreen, includeing the
///current OrderPlaceModelObj
class OrderPlaceController extends GetxController {
  Rx<OrderPlaceModel> cartModelObj = OrderPlaceModel().obs;
}
