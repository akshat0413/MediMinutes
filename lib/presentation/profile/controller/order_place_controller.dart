import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/order_place_model.dart';

///A controller class for the ProfileScreen.
///
///This class manaages the state of the ProfileScreen, includeing the
///current ProfileScreenModelObj
class ProfileScreenController extends GetxController {
  Rx<ProfileScreenModel> cartModelObj = ProfileScreenModel().obs;
}
