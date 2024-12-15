import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/cart_model.dart';

///A controller class for the HomeScreen.
///
///This class manaages the state of the HomeScreen, includeing the
///current homeModelObj
class CartController extends GetxController {
  Rx<CartModel> cartModelObj = CartModel().obs;
}
